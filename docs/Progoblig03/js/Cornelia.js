const canvas5 = document.getElementById("myCanvas5");
const ctx5 = canvas5.getContext("2d");

// hus
ctx5.fillStyle = "red";
ctx5.fillRect(20, 20, 300, 350);
//dør
ctx5.fillStyle = "black";
ctx5.fillRect(180, 220, 100, 150);
//vindu
ctx5.beginPath();
ctx5.arc(230, 120, 50, 0, 2 * Math.PI);
ctx5.fillStyle = "white";
ctx5.fill();
//vindu
ctx5.beginPath();
ctx5.arc(100, 120, 50, 0, 2 * Math.PI);
ctx5.fillStyle = "white";
ctx5.fill();