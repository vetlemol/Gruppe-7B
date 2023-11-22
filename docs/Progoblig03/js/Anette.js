var canvas1 = document.getElementById("myCanvas4");
var context = canvas1.getContext("2d");

context.beginPath();
context.arc(350, 125, 70, 0, 2 * Math.PI);
context.stroke();
context.fillStyle ="pink";
context.fill();


//ny trekant
context.beginPath();
context.moveTo(350, 135);
context.lineTo(300, 150);
context.lineTo(350, 85);
context.lineTo(400, 150);
context.lineTo(350, 135);
context.fillStyle = 'yellow';
context.fill();
//stjerne
context.beginPath();
context.moveTo(350, 135);
context.lineTo(400, 105);
context.lineTo(300, 105);
context.lineTo(350, 135);
context.fillStyle = 'yellow';
context.fill();
