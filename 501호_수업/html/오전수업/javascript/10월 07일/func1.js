// 진행 순서
// total함수 실행-> score_input함수의 kor,mat,eng변수값 total에전달
// -> total함수에서 kor,mat,eng의합을 tot변수에저장 
// -> tot변수의 값 total함수 실행 위치로 반환(return) 
//  -> score_input함수에서 total함수로부터 반환 된값 tot변수에 저장
//  -> score_input함수에서 avg함수 실행 
// -> score_input함수의 tot변수를 avg함수에 전달
//  -> avg함수에서 전달받은 데이터를 tot변수에 저장

//  return ->  반환값은 1개 만 가능

function score_input(){
    var kor=99;
    var mat=89;
    var eng=79;
    // 총점과 평균 구하기
    total(kor,mat,eng);

    return [kor, mat, eng];
}
function total(kor,mat, eng){ //총점 계산
    var tot = kor+mat+eng;
    avg(tot);
}
function avg(tot){ //평균계산
    var res = tot/3;
    result_print(res);
}
function result_print(res){ // 결과 출력
    document.write( "평균 : " +res);
}