var canvas1 = document.getElementById("myCanvas4");
var context = canvas1.getContext("2d");

//ny trekant
context.beginPath();
context.moveTo(350, 135);
context.lineTo(300, 150);
context.lineTo(350, 100);
context.lineTo(400, 150);
context.lineTo(350, 135);
context.fillStyle = 'red';
context.fill();
//stjerne
context.beginPath();
context.moveTo(350, 135);
context.lineTo(400, 115);
context.lineTo(300, 115);
context.lineTo(350, 135);
context.fillStyle = 'red';
context.fill();
