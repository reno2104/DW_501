var board = new Array(400);
board.fill(0); //배열에 채우기

    // 400개 안에 있는 자리에 랜덤으로 200개 넣기.
for(var i=0; i<200;){
    let pos = Math.floor(Math.random()*400);
// 중복제거. 1은 폭탄있고 0은 없다.
    if(board[pos] !=1){
        board[pos] =1;
        i++; //여기서 i++해야 위에처럼 200개 안채워지지않는다.
    }
}

window.onload = function(){
    // 표 만들기
    var table="<table>";
    for(var i =0; i<20; i++){
        table += "<tr>";
        for(var k=0; k<20; k++){
            if(board[i*20+k] ==1) //인덱스 위치값
                // 이미지 넣기
                table += "<td><img src=../image/bomb.png></td>";
            else
                table += "<td></td>";
        }
        table += " </tr>";
    }
    document.getElementById("wrap").innerHTML = table;
}