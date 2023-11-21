
// Canvas rectangle
const canvasrectangel = (color,x, y, w, h) => {
const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");

ctx.fillStyle = color;
ctx.fillRect(x, y, w, h);
const tekst = document.getElementById("canrek");
tekst.innerHTML = "Rektangel Canvas"
}

// Canvas Circle
const canvasCircle = (color, x, y, r) => {
const canvas = document.getElementById("canvas2");
const ctx = canvas.getContext("2d");

ctx.beginPath();
ctx.arc(x, y, r, 0, 2 * Math.PI);
ctx.fillStyle = color;
ctx.fill();
const tekst = document.getElementById("cancirc");
tekst.innerHTML = "Sirkel Canvas "
}
