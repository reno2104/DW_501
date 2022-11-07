var canvas = document.getElementById('ball');
var ctx=canvas.getContext('2d');
var ball = {x:100, y:50, x_step:1, y_step:1};

setInterval(move, 50); // 시간은 빠르고 거리는 작게
function move(){

    ctx.clearRect(0,0,500,400); // 이전 그림은 지워라.
    ctx.beginPath();
    ctx.arc(ball.x, ball.y, 10,0,2*Math.PI, true);
    ctx.closePath();
    ctx.fillStyle='pink';
    ctx.fill();
    ctx.stroke();

    ball.x += ball.x_step;
    ball.y += ball.y_step;

    requestAnimationFrame(move,)
}