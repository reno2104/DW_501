$(document).ready(function(){
    $(".menu-toggle").on('click',function(){
        $('.gnb').stop().slideToggle('fast');
    })
})

/*
// 시간 설정 기능.
show(); 
        // show : hide 상태에서 나타나게 하는 함수.
hide();
toggle(); 
    // show, hide 둘다 할 수 있는 기능.
fadein();
    // 투명도 설정도 가능. 화면에 보여지게 하는 기능.
fadeout();
    // 투명도 설정도 가능. 화면에서 사라지는 기능.
slideup();
slidedown();
slideToggle();
 // slide : 스르륵 열고 닫게 하는 기능.
 */