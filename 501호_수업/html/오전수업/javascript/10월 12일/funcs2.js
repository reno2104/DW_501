/*
html 작업
1. input 1개 생성 (생년월일입력 : 1999.01.02)
   너비 200,높이35,폰트17
2. 버튼 1개 생성
   입력 , 너비100 높이37, 폰트 15
3. div #birthday 생성
4. div#birthday 하위 태그로 ul태그생성
5. ul태그 하위로 li태그 3개 
   (각각 li에 태어난년도, 태어난월,나이)

자바스크립트 작업
1. 버튼 이벤트 생성 ,함수 input
2. input함수에서 value값 가져오고 출력
3. getYear함수(태어난년도 구하기)
4. getMonth함수(태어난 월 구하기)
5. getAge함수(나이 구하기)
*/

window.onload=function(){
    document.getElementById("bt").addEventListener("click",input);
}
function input(){
    var birth = document.getElementById("birth").value;

    var birth_year = getYear(birth);
    var birth_month = getMonth(birth);
    var age = getAge(birth);

    var info = document.getElementsByClassName("info");
    info[0].innerHTML=birth_year;
    info[1].innerHTML=birth_month;
    info[2].innerHTML=age;
}
function getAge(birth){
    year =birth.split(".");
    age = 2022 - parseInt(year)+1;
    return age;
}
function getMonth(birth){
    month = birth.split(".")[1];
    return month;
}
function getYear(birth){
    year = birth.split(".")[0];
    return year;
}