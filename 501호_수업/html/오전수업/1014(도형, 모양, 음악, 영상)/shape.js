/*

** 도형 객체
도형. 모양 = 사각형
도형. 위치x축 = 120
도형. 위치y축 = 50
도형. 그리기(함수)
도형.지우기(함수)

도형.모양 = 삼각형
도형. 위치x축 = 200
도형. 위치y축 = 120
도형. 그리기(함수)
도형.지우기(함수)

** 객체의 멤버로 접근하기 위한 연산자(.) - access연산자.
접근연산자는 +, -, ++, &&, || 등보다 우선순위가 높음

ex) 도형.위치x축 +10;
접근연산자는 순위 중 약 4위.

1순위 (), 2순위 [], 3순위 ->,


*/

var shape = {
    모양 : "사각형",
    x축 : 120,
    y축 : 23,
    draw : function(){
        return "x축 : "+ this.x축 + 
        "y축 : "+this.y축+
        "위치에" + this.모양+
        "그리기";

    }

    // 모양, x축, y축 : 키(key)
    // 사각형, 120, 23 : value
    // 키(key)는 반드시 문자열로만 만들어져야 한다.
    // 키와 밸류는 1대1 관계.
    // function() : 이름없는(익명) 함수
    // * 객체 내부에서 함수 생성시, 변수(key)의 사용은 this로 접근한다.
}

document.write('모양'+shape.모양);
document.write(shape.draw());

/*

** 객체 생성 방법 
1. 객체 리터럴 방식 : 변수처럼 객체를 생성하는 방식.

*/

// 학생 객체 생성(학년, 반 , 번호, 이름)
var name="김춘추";
var student = { 
    학년:1,
    반:3,
    번호:2022010327,
    이름 : '홍길동'
};
document.write("<br>"+student.이름);

/*

** 객체 생성 방법 
2. 생성자 방식 : new 연산자로 생성하는 방식.
    생성자 방식 1) object 객체로 생성.
    생성자 방식 2) 함수를 통한 생성.

*/
var music = new Object();
music.title = '모음집';
music['가수'] = '나얼';
music.link = '<iframe width="640" height="360" src="https://www.youtube.com/embed/aK7zf7Nrc0k" title="나얼 노래모음(브라운 아이드 소울, 브라운아이즈)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';

document.write(
    '<a href='+music.link+"target='play'>"
    +music['title']+
    " "+music.가수+
    "</a>");


var 제목 = '바람기억';
var 가수 = '나얼';
music.title = 제목;
music.가수 = 가수;

document.write(music['title']+" "+music.가수);