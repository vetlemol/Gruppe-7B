var canvas1 = document.getElementById("myCanvas4");
var context = canvas1.getContext("2d");




// the triangle
context.beginPath();
context.moveTo(108, 0.0);
context.lineTo(141, 70);
context.lineTo(218, 78.3);
context.lineTo(162, 131);
context.lineTo(175, 205);
context.lineTo(108, 170);
context.lineTo(41.2, 205);
context.lineTo(55, 131);
context.lineTo(108, 0.0);
context.closePath();
context.fillStyle = "red";
context.fill();

/*
ctx.fillStyle = "blue";
ctx.beginPath();
ctx.moveTo(108, 0.0);
ctx.lineTo(141, 70);
ctx.lineTo(218, 78.3);
ctx.lineTo(162, 131);
ctx.lineTo(175, 205);
ctx.lineTo(108, 170);
ctx.lineTo(41.2, 205);
ctx.lineTo(55, 131);
ctx.lineTo(1, 78);
ctx.lineTo(75, 68);
ctx.lineTo(108, 0);
ctx.closePath();
context.fillStyle = "";
context.strokeRect(130, 300, 200, 50);
*/
