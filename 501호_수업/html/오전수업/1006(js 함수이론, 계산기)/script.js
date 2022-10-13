var number = 0;
var oldNumber = 0;
var opd =null;
var result = 0;
var flag = false;

window.onload = function(){
    var num = document.querySelectorAll('.num');
    var op = document.querySelectorAll('.op');

    for(var i=0; i<num.length; i++){
        num[i].addEventListener("click", function(){
            number = parseInt(this.dataset.value);
            calc();
        });
    }

    for(var i=0; i<op.length; i++){
    op[i].addEventListener('click', function(){
        opd = this.dataset.value;
        flag = true;
        calc();
    })
    }
}

function calc(){
    if(flag){
        oldNumber = number; 
        flag=false;
        number=0;
    }
    if(oldNumber !=0 && number!=0){
        selectOp();
    document.querySelector('#result').innerHTML=result;        
    }
}

function selectOp(){
    switch(opd){
        case "+" : 
        result = oldNumber+number;
                    break;
        case "-" : 
        result = oldNumber-number;
                    break;
        case "/" : 
        result = oldNumber/number;
                    break;
        case "*" : 
        result = oldNumber*number;
                    break;
    };
}