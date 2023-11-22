var canvas1 = document.getElementById("myCanvas1");
var context = canvas1.getContext("2d");
var centerX1 = canvas1.width / 2;
var centerY1 = canvas1.height / 2;
var centerX2 = canvas1.width / 2 - 80;
var centerY2 = canvas1.height / 2 - 70;
var centerX3 = canvas1.width / 2 + 80;
var centerY3 = canvas1.height / 2 - 70;
var radius1 = 200;
var radius2 = 20;


//test av egen firkant
context.fillStyle = "green";
context.fill();
context.strokeRect(30, 30, 400, 400);
context.fill();

// the triangle
context.beginPath();
context.moveTo(100, 100);
context.lineTo(50, 150);
context.lineTo(150, 150);
context.closePath();
// the fill color
context.fillStyle = "red";
context.fill();

/*
// the outline
context.lineWidth = 10;
context.strokeStyle = '#666666';
context.stroke();
for å få outline på trekanten*/


//ny trekant
context.beginPath();
context.moveTo(350, 100);
context.lineTo(400, 150);
context.lineTo(300, 150);
context.closePath();
context.fillStyle = 'red';
context.fill();

context.fillStyle = "";
context.strokeRect(130, 300, 200, 50);