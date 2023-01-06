const moyenneBtn = document.getElementById('moyenneBtn')
const ageBtn = document.getElementById('ageBtn')
const identityBtn = document.getElementById('identityBtn')
const colorBtn = document.getElementById('colorBtn')

moyenneBtn.addEventListener('click', () => {
    calcul_moyenne();
})
ageBtn.addEventListener('click', () => {
    test_age()
})
identityBtn.addEventListener('click', () => {
    name_tests()
})
colorBtn.addEventListener('click', () => {
    test_couleur()
})

function calcul_moyenne(){
    let note1 = prompt('Donner la premier note: ')
    let Coef1 = prompt('Donner le premier coef: ')

    let note2 = prompt('Donner la deuxieme note: ')
    let Coef2 = prompt('Donner le deuxieme coef: ')
    
    let note3 = prompt('Donner la troisieme note: ')
    let Coef3 = prompt('Donner le troisieme coef: ')

    let somme = Number(note1 * Coef1) + Number(note2 * Coef2) + Number(note3 * Coef3);

    document.write(`Voici la somme : ${somme} <br>`)
    let moyenne = (somme / (Number(Coef1) + Number(Coef2) + Number(Coef3)))

    document.write(`Voici la moyenne: ${moyenne} <br>`)

    if(moyenne < 10){
        document.write("Vous etes redoublant")
    }
    else{
        document.write('vous etes admis')
    }
}

function test_age(){
    let age = prompt('Quelle est votre age ?')
    if(age < 18){
        document.write("Vous etes mineur")
        document.bgColor="red"
    }
    else{
        document.write("Vous etes majeur")
        document.bgColor="green"
    }
}
function name_tests(){
    let name = prompt('Donner votre prenom')
    let familyName = prompt('Donner votre nom')

    document.write('<div style="margin:auto; width:300px; border:2px solid blue; ">')
    document.write(`Bonjour ${name} ${familyName}`)
    document.write('</div>')
}
function test_couleur(){
    let c = prompt("Donner une couleur")
    if(c == "rouge" || c == "ROUGE" || c == "R"){
        document.body.style.background = "red"
    }
    else if (c == "bleu" || c == "Bleu" || c == "B"){
        document.body.style.background = "blue"
    }
    else{
        document.write("Couleur non comprise")
    }
}