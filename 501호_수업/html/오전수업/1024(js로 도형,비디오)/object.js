var canvas = document.getElementById('myCanvas');
var ctx = canvas.getContext("2d");

// 굴뚝
ctx.fillStyle = 'rgb(153,56,0)';
ctx.fillRect(130,130,30,70);

// 지붕
ctx.beginPath();
    ctx.moveTo(100,200); // 시작점
    ctx.lineTo(250,100);
    ctx.lineTo(400,200) // 끝지점
    ctx.fillStyle='yellow';
    ctx.fill();
ctx.closePath();

//벽
ctx.fillStyle='green';
ctx.fillRect(100,200,300,150);

// 연기
ctx.beginPath();
    ctx.arc(145,100,15,0,2*Math.PI,true);
    ctx.moveTo(131,80);
    ctx.arc(120,80,11,0,2*Math.PI,true);
    ctx.moveTo(131,80);
    ctx.arc(100,60,8,0,2*Math.PI,true);
ctx.closePath();
    ctx.fillStyle='rgb(61,183,204)';
    ctx.fill();





/*
ctx.strokeStyle = 'black';
ctx.strokeRect(220, 350, 40, 80);
ctx.fillStyle = 'rgb(75,0,0)';
ctx.fillRect(220, 350, 40, 80);

ctx.beginPath();
ctx.moveTo(300,350);
ctx.lineTo(200,450);
ctx.lineTo(400,450);
ctx.closePath();
ctx.strokeStyle="rgb(92,209,229)";
ctx.stroke();
ctx.fillStyle="rgb(29,219,22)";
ctx.fill();

ctx.strokeStyle = 'black';
ctx.strokeRect(200, 450, 200, 150);
ctx.fillStyle = 'rgb(204,166,61)';
ctx.fillRect(200, 450, 200, 150);
*/