var canvas = document.getElementById('smile');
var ctx=canvas.getContext('2d');

// arc(x좌표, y좌표,반지름, 시작각도, 끝나는 각도)
// 그리는 방향 true - 반시계방향. false - 시계방향

ctx.beginPath();
ctx.arc(75,75,50,0,Math.PI*2, true); // Math.PI : 180도

ctx.moveTo(110,75);
ctx.arc(75,75,35,0,Math.PI,false);

ctx.moveTo(65,65);
ctx.arc(60,65,5,0,Math.PI*2,true);

ctx.moveTo(95,65);
ctx.arc(90,65,5,0,Math.PI*2,true);

ctx.strokeStyle='black';
ctx.stroke();
ctx.closePath();