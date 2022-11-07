function movie(제목, 감독, 년도, 장르){
    this.영화제목=제목;
    this.감독=감독;
    this.개봉년도=년도;
    this.장르=장르;
    this.view = function(){
        return this.영화제목 + " " + this.감독;
    }
}

var m1 = new movie('한산','김**',2022,'전쟁');
document.write(m1.영화제목);

var m2 = new movie('공조','이석훈',2022,'액션');
document.write(m2.view());

// 자바스크립트 핵심 기능.
// 자바스크립트의 모든 객체는 포로토타임을 가지고 있다.
// ex) Number.prototype

movie.prototype.view = function(){
    return this.영화제목 + " " + this.감독;
}
// 차이?  movie로 만들어진 모든 객체가 사용할 수 있는 함수이다.
// 때문에 하나의 prototype으로도 표현가능한 객체의 수가 아주 많다.