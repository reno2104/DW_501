var item_list = ["핸드폰거치대","급속충전기","C타입케이블","강화유리",
"스마트폰 링","스마트폰 커버"];

var item_cost = ["3000원","4000원","2000원","1000원",
"5000원"];


window.onload = function(){
    var li = document.getElementsById("product");

    for(var i in li){
        li[i].innerHTML = item_list[i];
    }

    var li = document.getElementsById("cost");

    for(var k in li){
        li[k].innerHTML = item_cost[k];
    }
}

var item = new Array();
function result(){
    var name = document.getElementById('item_list');
    var prop = name.value;
    item.push(prop);
}


