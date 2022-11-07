//func1.js

/*
html 작업
1. input 2개 생성 - 너비150 , 높이35,둥근모서리
2. 버튼 1개생성 -> text-입력, 너비80,높이35 
   검정바탕 흰색글씨, 글씨크기15px ,이름과  직업 입력
3. div 생성 -> id-output, 너비300, 화면가운데표시

자바스크립트 작업
1. 입력 버튼 클릭시 이벤트 생성 - 함수명input
2. input함수 -> 두 input value값 가져오기
3. list_push 함수 -> 두개 value값 input 함수로부터
   받아서  배열list에 저장 
4. output_list함수 -> 배열list의 값 div#output에 출력
      이름 출력영역 너비150, 높이30
      직업 출력영역 너비150, 높이30
*/

window.onload = function(){
    document.getElementById("bt").addEventListener("click",input);
};

function input(){
    var name = document.getElementById("name");
    var job = document.getElementById("job");
    // input 엘리먼트 객체로 가져오기
    list_push( name.value , job.value );
    // input value 값 list_push에 넘기기
    name.value=''; //name input 초기화
    job.value='';// job input 초기화
    name.focus();// name inputd에 커서 이동
}
var list=new Array();
function list_push(name, job){
    var out = "<span>"+name+"</span><span>"+job+"</span>";
    list.push(out);
    //list.push( [name, job] );
    // list.push( { n : name , j : job});
    output_list();
}
function output_list(){
    var div = document.getElementById("output");
    var out="";
    for(var i in list){
        out+= list[i];
    }
    div.innerHTML=out;
}
