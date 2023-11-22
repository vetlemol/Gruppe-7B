const canvas = document.getElementById("myCanvas1");
const ctx = canvas.getContext("2d");

ctx.beginPath();
ctx.arc(105, 75, 50, 0, 2 * Math.PI);
ctx.lineWidth = 5;
ctx.strokeStyle = "blue";
ctx.stroke();

ctx.beginPath();
ctx.arc(205, 75, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "black";
ctx.stroke();

ctx.beginPath();
ctx.arc(305, 75, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "red";
ctx.stroke();

ctx.beginPath();
ctx.arc(155, 165, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "yellow";
ctx.stroke();

ctx.beginPath();
ctx.arc(255, 165, 50, 0, 2 * Math.PI);
ctx.strokeStyle = "green";
ctx.stroke();