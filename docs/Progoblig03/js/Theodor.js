const canvas = document.getElementById("myCanvas3");
const ctx = canvas.getContext("2d");

ctx.beginPath();
ctx.arc(150, 75, 50, 0, 2 * Math.PI);
ctx.lineWidth = 5;
ctx.strokeStyle = "blue";
ctx.stroke();

ctx.beginPath();
ctx.arc(250, 75, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "black";
ctx.stroke();

ctx.beginPath();
ctx.arc(350, 75, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "red";
ctx.stroke();

ctx.beginPath();
ctx.arc(200, 165, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "yellow";
ctx.stroke();

ctx.beginPath();
ctx.arc(300, 165, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "green";
ctx.stroke();