const inputOne = document.getElementById('inputOne')
const inputTwo = document.getElementById('inputTwo')

const btnAdd = document.getElementById('btnAdd')
const btnSous = document.getElementById('btnSous')
const btnMulti = document.getElementById('btnMulti')
const btnDivi = document.getElementById('btnDivi')

const parite = document.getElementById('parite')
const permu = document.getElementById('permu')

const result = document.getElementById('result')

btnAdd.addEventListener('click', (e) => {
    result.innerText = Number (inputOne.value) + Number(inputTwo.value)
})

btnSous.addEventListener('click', (e) => {
    result.innerText = Number (inputOne.value) - Number(inputTwo.value)
})

btnMulti.addEventListener('click', (e) => {
    result.innerText = Number (inputOne.value) * Number(inputTwo.value)
})
btnDivi.addEventListener('click', (e) => {
    result.innerText = Number (inputOne.value) / Number(inputTwo.value)
})

parite.addEventListener('click', () => {
    if((Number (inputOne.value) + Number(inputTwo.value)) % 2 == 0){
        result.innerText = "PAIR"
    }
    else{
        result.innerText = "INPAIR"
    }
})
permu.addEventListener('click', () => {

    let permu = document.getElementById('inputOne').value
    
    document.getElementById('inputOne').value = document.getElementById('inputTwo').value
    document.getElementById('inputTwo').value = permu;
})