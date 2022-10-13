//번호 만들기
var num = 1;


// 버튼 클릭전 입력할 내용(도시, 확진자수)
window.onload = function(){
    var add = document.querySelector('#add');
    add.addEventListener("click",function(){
        var city = document.querySelector('#city').value;
        var cnt = document.querySelector('#count').value;

        var h=document.createElement('h3');
        h.appendChild(document.createTextNode(city));
        div.appendChild(h);

        h=document.createElement("h3");
        h.appendChild(document.createTextNode(cnt + "명"));
        div.appendChild(h);
    });

    var parent = document.querySelector('#result');
    parent.prepend(div);
    //prepend : 
}
var add_check = false;

function tag_add(){

    if(add_check){
        return;
    }
    add_check = true;
}
