var canvas2 = document.getElementById("myCanvas2");
var context = canvas2.getContext("2d");



//Stor firkant
context.fillStyle = "white";
context.fill();
context.fillRect(30, 30, 400, 400);
context.fill();

// trekant
context.beginPath();
context.moveTo(100, 100);
context.lineTo(50, 150);
context.lineTo(150, 150);
context.closePath();
context.fillStyle = "red";
context.fill();

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