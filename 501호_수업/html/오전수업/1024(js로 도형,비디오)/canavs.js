var canvas = document.getElementById('draw');
var start=document.getElementById('start');
var stop=document.getElementById('stop');
var video=document.getElementById('recorded');

var mediarecorder = null;
var videoData = [];
start.addEventListener('click', function(){
    move();
    //캔버스 영역 화면을 스트림으로 취득
    var mediaStream = canvas.captureStream();

    // 녹화 객체 설정
    mediarecorder = new MediaRecorder(mediaStream);
    MediaRecorder.ondataavailable=function(){
        videoData.push(this.data);
    }
    //stop 이벤트 처리
    mediarecorder.onstop=function(){
        const bl= new Blob(videoData);

    //캔버스 화면 데이터를 가르키는 임시 주소 생성
    const blurl = window.URL.createObjectURL(bl);

    // 재생구현
    video.setAttribute('src',blurl);
    video.play();

    // 다운로드
    const anc = document.createElement('a');
    document.body.appendChild(anc);
    anc.style.display='none';
    anc.href=blurl;
    anc.download="ball.webm";
    anc.click();
    videoData.splice(0);

    }
    mediarecorder.start();

})