// 실행 칸.
user();

// 함수를 정의. (실행 전)
function user(){
 var user = parseInt(prompt('1.가위 2.바위 3.보'));
 var com = com(); // 컴 입력값 받기
result(user, com); // result 함수에 두개의 값을 넘기기
}

function com(){
    var com = Math.floor(Math.random()*3)+1; // 1~3까지 값 출력
    return com;
}

function result(user, com){
    if(user == com){
        alert('비김');
    }
    else if((user==1 && com==3) 
    || (user==2 && com==1) 
    || (user==3 && com==2)){
        alert('이김');
    }
    else{
        alert('패배');
    }
}

