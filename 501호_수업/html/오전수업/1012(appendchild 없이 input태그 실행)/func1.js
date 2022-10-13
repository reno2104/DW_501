window.onload = function () {
    document.getElementById("func").addEventListener("click", input);
}

function input() {
    var name = document.querySelector("#name");
    var job = document.querySelector("#job");
    // input 엘리먼트 객체로 가져오기.
    list_push(name.value, job.value);
    // input value 값 list_push에 넘기기

    name.value = '';
    job.value = '';
    // name, job input 초기화.
    name.focus(); // name input에 커서 이동.
}

var list =new Array();
function list_push(name, job) {
    var out = "<span>" + name + "<span/><span>" + job + "</span>";
    list.push(out);
    // list.push([name,job]); 1차원 배열안에 1차원 배열.
    // list.push({n : name, j : job}); => 2차원 배열 형태로 진행. 객체 형태로 다루는 것을 의미.
    output_list();
}

function output_list() {
    var div = document.getElementById("output");
    var out = "";
    for (var i in list) {
        out += list[i]; // list 배열 안에 있는 것들을 다 더한다.
    }
    div.innerHTML = out;
}

