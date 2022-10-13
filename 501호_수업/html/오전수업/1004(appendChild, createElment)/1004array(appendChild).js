// 1004array.js


// window.onload : html문서의 모든 내용이 브라우저에 표시된 이후에 동작
// window객체 : 브라우저
// window에만 onload 있는거 아님, 모든 객체(html태그포함)에 존재
// load --> 불러오기     즉, onload는 불러오는 작업이 끝났을 때 동작

var item_list = ["핸드폰거치대","급속충전기","C타입케이블","강화유리",
    "스마트폰 링","스마트폰 커버"];

window.onload = function () {
    // li 태그 가져오기
    var li = document.getElementsByClassName("item");
    // var li = document.querySelectorAll(".item");
    // 여기서 li의 구조는 배열구조 --> li[0]

    // for(var i=0; i<li.length; i++)
    for (var i in li) {  
        //for ( in ) : 배열구조에서 사용
        li[i].innerHTML = item_list[i];
    }
    
}

    var item = new Array();
    function enroll(){
        var name = document.getElementById('item_name');
        // var name = document.querySelector("#item_name");
    
        var prop = name.value;
        item.push(prop);

        var price = document.querySelector('#cost');

        var ul = document.querySelector('#item_list');
            var li = document.createElement('li'); // li태그 생성.

            li.innerHTML = item[item.length -1]  ; // li태그 
            // li.innerHTML = item[item.length -1] + " " + +price.value+"원"  ; 

            var d= document.createElement("d");
            d.innerHTML = price.value + "원";
            li.appendChild(d);

            var bt = document.createElement('button');
            bt.setAttribute('class', 'del_bt');
            bt.setAttribute('onclick', 'del(this)');
            bt.innerHTML = "삭제";
            li.appendChild(bt);

            ul.appendChild(li); // ul 태그 자식으로 li생성. 
            // appendChild : function.함수형태로 사용. 대입연산자 x.
            //새로운 태그(엘리먼트, 요소, 객체)를 생성하는 방법 : createElement() 함수       

  // 태그(앨리먼트) 내부에 새로운 내용으로 삽입하는 방법 : innerHTML
  // 태그(앨리먼트) 내부에 새로운 내용을 추가하는 방법 : appendChild
  // 태그(앨리먼트) 내부에 텍스트 형식으로 삽입하는 방법 : appendChild(textnode)
  // ul.innerHTML = item[i]; 의 경우,
  //innerHTML 기존에 있던 태그 다 지우고 항상 새로운 태그를 넣는 방법.
    }

    function del(obj){
        var parent_li = obj.parentNode;
        var parent_ul = parent_li.parentNode;
        parent_ul.removeChild(parent_li);

    }
