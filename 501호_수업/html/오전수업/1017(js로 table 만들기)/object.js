function tb(clo, row, wd, hg){
    this.col=col;
    this.row=row;
    this.width=wd;
    this.height=hg;
}

var tb_list=new Array();
var bt_cnt = 0; // 전역변수
var bt_check =false;

window.onload = function(){
    var add_bt = document.querySelector('#add');
    add_bt.addEventListener("click", add_button);

    var T_put = document.getElementsByClassName('T_put');
    for(var i in T_put){
        T_put[i].addEventListener('keyup', function(){
            if(!bt_check){
// focus : 커서를 따로 뺀다.
// keydown : 현재 input 값을 삭제.
    alert("새 세팅버츤을 추가하세요.");
            }
            this.value=' ';
        })
    }
}

function add_button(){
    if(bt_check){ //새버튼 생성 후 값등록 안되어있으면 새버튼 생성 금지
        alert("값 먼저 등록해주세요.")
        return;
    }
    var bt = document.createElement('button');
    bt.appendChild(document.createTextNode('세팅'+(++bt_cnt)));
    // ++bt_cnt : 순서가 먼저 진행.
    bt.setAttribute('data-value','0');
    
        

    bt.addEventListener('click',function(){
        if(this.dataset.value==0)//input 값 저장 하기전
        value.save(this);
    else //input값 저장이후
    table_draw(this);
    });

    document.getElementsByClassName('add_wrap')[0].appendChild(bt);
    // id일 경우 [0]index 안붙여도 된다.
    bt_check=true;

    function table_draw(dbj){
        var drw=document.querySelector('#draw');
        var data=tb_list[parseInt(obj.dataset.value)-1];

        var out = '<table border=1>';
        for(var i=1; i<=data.col; i++){ // 행
             out += '<tr>';
             for(var k=1; k<=data.row; k++){ // 열
                out += '<td width='+data.width+' height='+data.height+'></td>';
                // 너비와 높이 지정
             }
             out +='</tr>';
        }

        out += '</table>';

        draw.innerHTML = out;
    } 

function value_save(obj){
    var input_label=['행','열','너비','높이'];
    var T_put = document.getElementsByClassName('T_put');
    for(var i in T_put){
        if(T_put[i].value==''){
            alert(input_label[i]+'을 입력하세요.');
            T_put[i].focus();
            return;

        }
    }

    var temp = new tb(T_put[0].value, T_put[1].value, T_put[2].value, T_put[3].value);
    tb_list.push(temp);

    bt_check=false;
    for(var i=0; i<T_put.length; i++){
        T_put[i].value='';
    }
}

}