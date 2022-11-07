/*
함수 ,메소드 차이
귀속 여부
함수는 독립적인 코드
메서드는 귀속되어서 사용되는코드

함수 : 코드를 모듈화 한것으로 ,재사용성, 
유지보수 효율성이 좋아지는 특징을 가짐
-> 모듈에는 이름을 지정해야 하며, 모듈 삽입
하게 되는 사항과 모듈이 사용 되었을때 출력
되는 사항을 확인하는 것이 필요


// a input태그로부터 데이터 입력받아서
 
1. 데이터가 유효한 데이터인지 검사하고
 저장 하는 위치에 공간 확보가 되엇는지 확인하고
 파일 저장 하기위해
2.  파일이 생성 되었는지 확인하고
3. 생성되었다면 파일에 저장한다.

 b input태그로부터 데이터 입력받는경우
 1함수  2. 함수 3함수 실행
 

 함수의 구성 : 선언부 및 정의부 , 실행부
 선언부 및 정의부 
 -> 함수모듈의 출력형태와 이름, 삽입되는
 사항과 코드블럭이 추가되어 있는 부분
 function func1(obj1,obj2){
    res = obj1 + obj2;
    return res;
 }
 addEventListner("click",function(){

 })

 실행부 : 함수의 이름과 데이터를 삽입하여
 함수모듈을 실행하게 해주는 부분
 func1(10,20); 

 함수 실행순서
 브라우저실행-> HTML엘리먼트 호출 -> 코드해석
 -> 함수발견 -> 함수실행 -> 함수실행완료후 호출한 위치로 복귀
 -> 원래 코드실행

 변수의 존속성
 변수의 지역성 : 변수는 기본적으로 코드블럭 내에서만 존재
 (코드블럭 - { }  )
 변수 선언후 코드블럭이 종료될때가지 메모리상에 존재(지역변수)
 코드블럭 내에서 선언된 변수는 모두 지역변수이다.
 함수 실행시 현재가지 실행되던 내역은 모두 스택이라는 메모리영역에
 보관후 실행함수로 제어를 이동하여 초기화 -> 함수실행이 완료되면
 초기화된 변수들은 메모이 영역에서 삭제 

 지역변수는  코드블럭에서만 사용가능
      코드블럭 실행시 생성되고  코드블럭종료시 삭제

변수의 전역성 : 코드블럭 외부에서 선언된 변수
모든 코드블럭에서 사용 가능
전역변수는  프로그램 종료시 삭제


함수간 통신방법(데이터 이동)
함수는 기본적으로 폐쇄적 구조 형태 -> 함수간 데이터 공유 불가
함수간 통신을 위한 방법 : 데이터 삽입부와 출력부를 이용해서 통신
데이터삽입 ( 인수 (파라미터 , 매개변수)  ) 실행함수에 데이터전달
sum(10,20,30,40);
-> 10과 20 데이터를 매개변수 a와 b에 전달
a=10 ,  b=20  저장

반환값 : 실행 함수에서 호출함수로 전달하는 데이터

function sum( a, b){
    return (a+b);
}

result = sum(23,12);
변수 result는 35의 값을 가지게 된다.



var res = total(5,20); // 원하는 숫자 범위의 총 합 구하기
document.write( res +"<br>");
var res = total(13,56);
document.write( res +"<br>");
function total(a,b){
    var sum=0;
    for(var i= a ; i<= b ; i++){
        sum = sum+ i;
    }
    return sum;
}

// 함수의 4가지 형태
// 1. 입력 X, 출력 X
function func1(){
    document.write("매개변수없고 반환도 없다.");
}
// 2. 입력 O , 출력 X
function func2(birth){
    var age = 2022 - parseInt(birth.substring(0,4));
    document.write("나이는 " + age+"살 먹었다.");
}

// 3.입력 X , 출력 O
function func3(){
    var num = document.querySelector("#number");
    num = parseInt(num);

    return num + "번 입니다.";
}

// 4. 입력 O, 출력 O
function func4(point, multi, state){
    if(state >0) multi=1;

    return ( point * multi);
}
*/

var number=0;
var oldnumber=0;
var opd=null;
var result=0;
var flag=false;

window.onload=function(){
    var num = document.querySelectorAll(".num");
    var op = document.querySelectorAll(".op");

    for(var i=0; i<num.length; i++){
        num[i].addEventListener("click",function(){
            number = parseInt(this.dataset.value);
            calc();
        });
    }
    for(var i=0; i<op.length; i++){
        op[i].addEventListener("click",function(){
            opd = this.dataset.value;
            flag=true;
            calc();
        });
    }
};

function calc(){
    if(flag){
        oldnumber=number;
        flag=false;
        number=0;
    }
    if(oldnumber!=0 && number!=0){
        selectop();
        document.querySelector("#result").innerHTML=result;
    }
}
function selectop(){
    switch(opd){
        case "+" :
            result = oldnumber+number;
            break;
        case "-":
            result = oldnumber-number;
            break;
        case "*":
            result = oldnumber*number;
            break;
        case "/":
            result = oldnumber/number;
            break;
    }
}