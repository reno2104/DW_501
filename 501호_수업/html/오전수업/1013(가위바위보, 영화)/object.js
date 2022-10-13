window.onload = function(){
var input = document.getElementsByClassName('movie');
for( var i in input){
    input[i].addEventListener('focus',function(){
        this.classList.add('active');
    })
    input[i].addEventListener('blur',function(){
        this.classList.remove('active');
    })
}
}