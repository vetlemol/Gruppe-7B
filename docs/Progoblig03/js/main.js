let medlemmer = ['Mathias', 'Vetle', 'Joakim', 'Cornelia', 'Theodor', 'Anette'];
let persbilde = [ "./images/Mathias.png", './images/Vetle.png',  "./images/Joakim.png",  "./images/Cornelia.png", "./images/Theodor.png" ,"./images/Anette.png",]
let telefonNummer = ['+ 47 98316662', '+ 47 41243847', '+47 47603305', '+47 98600291', '+47 96046176', '+47 41391140']
let mail = ['mjjorgense@uia.no', 'vetlem@uia.no', 'Joakimbj@uia.no', 'corneliars@uia.no', 'theodorkp@uia.no', 'Anettelj@uia.no']
let quotes = [
    '“If a person can’t be calm for long, they can’t be happy for long, because happiness is calmness.”',
    '“You don’t know what beauty is. You use the word, certainly, but your word is empty. Beauty is known only by one who has known the inner beauty, one who has known the inner flower opening. Then whenever a flower is seen, it reminds you of your inner beauty.” -Osho',
    '“Sometimes the bad things that happen in our lives put us directly on the path to the best things that will ever happen to us.”',
    '“Listen to your own voice, your own soul, too many people listen to the noise of the world, instead of themselves.”',
    '“We almost always see only what’s wrong with other people and not what’s wrong with us.” -Joyce Meyer',
    '“You are never too busy to take time out of your day for those who matter most. You can always make time.”' ]

for( let i = 0; i < medlemmer.length; i++){
const tittel = document.getElementById("perstittel" + i );
tittel.innerHTML = medlemmer[i];
tittel.style.paddingLeft = "50px";
tittel.style.fontSize = "50px";
tittel.style.color = "white";
const post = document.getElementById("mail" + i );
post.innerHTML = mail[i]
const src = document.getElementById("Bilde" + i)
let Bilde = document.createElement("img")
Bilde.src = persbilde[i];
Bilde.style = "width: 500px;"
src.appendChild(Bilde)

const quotestext = document.getElementById("Tekst" + i)
quotestext.innerHTML = quotes[i]
}
