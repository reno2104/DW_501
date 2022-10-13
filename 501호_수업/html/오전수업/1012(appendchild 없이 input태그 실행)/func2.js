window.onload = function () {
    document.getElementById("input").addEventListener("click", input);
}

function input() {
    var birth = document.querySelector("#birth");
}

list_push(birth.value);
birth.value='';
birth.focus();

function list_push(birth) {
    var out = "<span>" + birth + "<span/>";
    list.push(out);

    getYear='';
    getMonth="";
    getAge='';
}

function output_list() {
    var div = document.getElementById("output");
    var out = "";
    for (var i in list) {
        out += list[i]; 
    }
}