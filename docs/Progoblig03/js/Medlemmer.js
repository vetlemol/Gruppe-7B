let beskrivelser = [
    'Mathias is a 20 year old student at UiA. He loves IT and hopes he can one day have a good paying IT job where he can travel and work at the same time. He thinks one the beauties of IT, is that it can be done where ever as long as you got internett and a computer. He also loves exercising and hanging out with girlfriend or friends. ',
    'He is 24 years old and grew up in Porsgrunn. Vetle graduated from Porsgrunn HighSchool in 2018, and then moved to Kirkenes to serve his obligatory year in the army. After this year he took a military school to become a corporal and worked as a squad leader for soldiers and trained them to become military boarder control at the Norwegian-Russian border. Vetle worked in the army until December 2022, and then took half a year off, retaking some classes from high school to improve his grades. At the same time he worked at the hospital in Skien and as a substitute teacher in Porsgrunn for 1.-10. grade students in elementary school.', 
    'is 25y old and comes from Skibotn, a small town located in Nord-Troms in northern Norway. This is the 5th year Joakim studies at UiA. Joakim has earlier studied bachelor’s ineconomics and administration and a year course in Sociology. Joakim has worked in his family’s camping site in the last 10 years and have experience with everything from service, food preparation, janitorial work (electricity, plumbing etc.), carpeting and is a certified machine and truck operator.', 
    'Cornelia Rosendahl Sirevaag is 20 years old and grew up in Stavanger, but also spent a lot of herchildhood living in Gran Canaria. This is the first time she is studying at the university. After highschool she took a gap year to attend Agder folk high school where she studied global developmentand got the opportunity to travel to Tanzania, Kenya, Uganda, and Sri Lanka. In addition to her love of traveling, she has a strong interest in learning different languages and took classes in English, Spanish, and Arabic in high school. Other than that, she enjoys reading books and spending time with her friends.', 
    'Theodor Kornelius Paulsrud is 21 years old and from Sandfjord. He has worked at Sykehuset i Vestfold for the past 2 years and is still working remotely a couple of times a week. He is interested infootball and pretty much all types of sports. Likes to stay active and workout at the gym.', 
    'Anette Ljosland-Moi is 20 years old from a little place in Agder called Hægeland. This is her first time studying. On her spare time she likes to exercise, be with friends and play handball. In the summer she works as a process operator at Glencore Nikkelverk here in Kristiansand.'
];

const loadInfo = () => {
    var path = window.location.pathname;
    var page = path.split("/").pop();
    const beskrivelsetext = document.getElementById("beskrivelse");
    if(page === "Mathias.html") {
        beskrivelsetext.innerHTML = beskrivelser[0];
    } else if (page === "Vetle.html"){
        beskrivelsetext.innerHTML = beskrivelser[1];

    } else if (page === "Joakim.html"){
        beskrivelsetext.innerHTML = beskrivelser[2];

    } else if (page === "Cornelia.html"){
        beskrivelsetext.innerHTML = beskrivelser[3];

    } else if (page === "Theodor.html"){
        beskrivelsetext.innerHTML = beskrivelser[4];

    } else if (page === "Anette.html"){
        beskrivelsetext.innerHTML = beskrivelser[5];

    }else {
        beskrivelsetext.innerHTML ="Noe gikk galt"
        console.log(page)
    }

}