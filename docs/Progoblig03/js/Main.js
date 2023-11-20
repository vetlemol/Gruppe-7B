let medlemmer = ['Mathias', 'Vetle', 'Joakim', 'Cornelia', 'Theodor', 'Anette'];
let persbilde = [ "./images/Mathias.png", './images/Vetle.png',  "./images/Joakim.png",  "./images/Cornelia.png", "./images/Theodor.png" ,"./images/Anette.png",]
let telefonNummer = ['+ 47 98316662', '+ 47 41243847', '2', '3', '4', '5']
let mail = ['mat.nik.jorgensen@gmail.com', 'vetlem@uia.no', '2', '3', '4', '5']
let quotes = ['“If a person can’t be calm for long, they can’t be happy for long, because happiness is calmness.”', '1', '2', '3', '4', '5' ]

for( let i = 0; i < medlemmer.length; i++){
const tittel = document.getElementById("perstittel" + i );
tittel.innerHTML = medlemmer[i];
tittel.style.paddingLeft = "50px";
tittel.style.fontSize = "50px";
tittel.style.color = "white";
const teleNum = document.getElementById("tlf" + i );
teleNum.innerHTML = telefonNummer[i]
const post = document.getElementById("mail" + i );
post.innerHTML = mail[i]
const src = document.getElementById("Bilde" + i)
let Bilde = document.createElement("img")
Bilde.src = persbilde[i];
src.appendChild(Bilde)

const quotestext = document.getElementById("Tekst" + i)
quotestext.innerHTML = quotes[i]
}
