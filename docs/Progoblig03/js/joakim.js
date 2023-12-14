//Henter canvaset og deler lengden og bredden på 2 for å plassere senteret av figurene i midten av canvaset
var canvas1 = document.getElementById("myCanvas6");
var context = canvas1.getContext("2d");
var centerX1 = canvas1.width / 2 - 120;
var centerY1 = canvas1.height / 2 - 120;
var centerX2 = canvas1.width / 2;
var centerY2 = canvas1.height / 2;
var centerX3 = canvas1.width / 2 - 40;
var centerY3 = canvas1.height / 2 - 40;
var centerX4 = canvas1.width / 2 - 80;
var centerY4 = canvas1.height / 2 -80;
var radius1 = 120
var radius2 = 80

//Lyseblå rektangel
context.beginPath();
context.fillStyle = "lightblue";
context.fillRect(centerX1, centerY1, 120, 120);
context.fill();

//Limefarget sirkel
context.beginPath();
context.arc(centerX2, centerY2, radius1, 0, 2 * Math.PI, false);
context.fillStyle = "lime";
context.fill();

//Lyseblå Sirkel
context.beginPath();
context.arc(centerX3, centerY3, radius2, 0, 2 * Math.PI, false);
context.fillStyle = "lightblue";
context.fill();

//Gul rektangel
context.beginPath();
context.fillStyle = "yellow";
context.fillRect(centerX4, centerY4, 60, 60);
context.fill();
