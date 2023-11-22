const canvas = document.getElementById("myCanvas5");
const ctx = canvas.getContext("2d");

ctx.fillStyle = "red";
ctx.fillRect(20, 20, 300, 350);
ctx.fillStyle = "black";
ctx.fillRect(180, 220, 100, 150);

ctx.beginPath();
ctx.arc(230, 120, 50, 0, 2 * Math.PI);
ctx.fillStyle = "white";
ctx.fill();

ctx.beginPath();
ctx.arc(100, 120, 50, 0, 2 * Math.PI);
ctx.fillStyle = "white";
ctx.fill();
