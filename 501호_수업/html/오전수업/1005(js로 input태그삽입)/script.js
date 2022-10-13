window.onload = function(){
    var add = document.querySelector('#add');
    add.addEventListener("click",tag_add);
    // addEventListener("이벤트",이벤트발생동작함수) : 태그에 이벤트 설정.(추가)
    // 이벤트발생동작함수 : 1. 직접 function을 통한 함수 직접 생성. 2. tag_add를 통해 동작 연결고리 생성.
};

var add_check = false;

function tag_add(){

    if(add_check){
        return; // 함수 끝.
    }
    add_check = true;
// 여기까지 클릭시 한번만 생성하도록.

    var Pdiv = document.querySelector("#score_wrap");
    var div = document.createElement("div");

        var ipt = document.createElement("input");
        ipt.setAttribute("type","text");
        ipt.setAttribute("id","name");
        ipt.setAttribute("placeholder","이름");
    div.appendChild(ipt);

    // 여기까지 input 태그 만듦.

    //이중 배열 : course[0][0] -> 대괄호 안에 대괄호 2번째 열
    var course = [
        ["국어","kor"],
        ["수학","mat"],
        ["영어","eng"]
    ];
    for(let i=0; i<3; i++){
        ipt =document.createElement("input");
        ipt.setAttribute("type", "number");
        ipt.setAttribute("id", course[i][1]);
        ipt.setAttribute("placeholder", course[i][0]);
    div.appendChild(ipt);
    }
    var bt=document.createElement("button");
        bt.addEventListener("click",enroll);
    // createTextNode : 텍스트 태크 생성. setAttribute로는 생성불가.
    var text = document.createTextNode("등록");
    bt.appendChild(text);

    div.appendChild(bt);
// input 태그들을 새 div에 담아

    Pdiv.appendChild(div); // score_wrap div에 추가
};

// 등록 버튼 태그 기능 삽입
function enroll(){
    add_check = false;
    var name = document.querySelector("#name").value;
    var kor = document.querySelector("#kor").value;
    var mat = document.querySelector("#mat").value;
    var eng = document.querySelector("#eng").value;

    var Pdiv = document.querySelector('#score_wrap');

    //여기까지 국수영 칸 만들고 꾸미기.


    // score_wrap div에 추가하는 작업 시작.
    var div = document.createElement("div");
    div.setAttribute("class","score");

    var data = [name, kor, mat, eng]
        for(let i in data){ // input 태그에 입력된 값을 h3에 삽입
            let h = document.createElement("h3");
            let text = document.createTextNode(data[i]);
            h.appendChild(text);
            div.appendChild(h);
        }

       var input = Pdiv.lastChild; // 마지막 자식태그(?)를 찾아라.
        Pdiv.removeChild(input); // input 태그 삭제.

Pdiv.appendChild(div); // input 태그값 div에 삽입.
}


