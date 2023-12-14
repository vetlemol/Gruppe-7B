//Henter Canvasen
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

// lager Grønn sirkel
context.beginPath();
context.arc(centerX1, centerY1, radius1, 0, 2 * Math.PI, false);
context.fillStyle = "lightgreen";
context.fill();

// lager rød sirkel
context.beginPath();
context.arc(centerX2, centerY2, radius2, 0, 2 * Math.PI, false);
context.fillStyle = "red";
context.fill();

// lager rød sirkel
context.beginPath();
context.arc(centerX3, centerY3, radius2, 0, 2 * Math.PI, false);
context.fillStyle = "red";
context.fill();

//Lager firkant uten fill
context.fillStyle = "";
context.strokeRect(220, 320, 160, 120);

//svg figur:

