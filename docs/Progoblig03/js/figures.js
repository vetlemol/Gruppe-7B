
const canvas0 = document.getElementById("canvas");
const ctx = canvas0.getContext("2d");

ctx.fillStyle = "red";
ctx.fillRect(10, 10, 150, 100);


var canvas1 = document.getElementById("myCanvas");
var context = canvas1.getContext("2d");
var centerX = canvas1.width / 2;
var centerY = canvas1.height / 2;
var radius = 70;

context.beginPath();
context.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
context.fillStyle = "green";
context.fill();
context.lineWidth = 5;
context.strokeStyle = '#003300';
context.stroke();



