// var frase = 'Eu amo Java! S2'

// console.log(frase.replace('Java', 'Javascript'))
// console.log(frase)

// var meuArray = ["Gustavo", "Monerat", 10, true, { turma: "10", nota: 10}]

// meuArray.pop() //retira o ultimo elemento
// meuArray.shift() //retira o primeiro elemento
// meuArray.push("React é top")

// console.log(meuArray.length) //tamanho do vetor
// console.log(meuArray.join(", ")) //oque está dentro do vetor
// console.log(meuArray.indexOf(("Monerat"))) //qual index q está o sobrenome (retorna -1 caso não encontre)


// var professor = {
//     nome: "Raphael",
//     idade: 29,
//     profissao: 'Desenvolvedor',
//     time: 'Mengão',
//     saudacao: () => console.log("Salve!")
// }

// const {nome, idade, profissao, time} = professor //dessestruturar

// console.log(professor.nome)
// console.log("Olá meu nome é: " + professor.nome)
// professor.saudacao()

// console.log(nome)
// console.log(idade)
// console.log(profissao)
// console.log(time)

// const turma1 = ["Gustavo","Raphael","João"]
// const turma2 = ["Ana","Jose","João"]

// const turma3 = [...turma1, ...turma2]

// console.log(turma3)

// const [ primeiro, segundo, ...restante] = turma3

// console.log(primeiro)
// console.log(segundo)
// console.log(restante)

const linguagens = [
    { nome: "Javascript", nota: 8, utilizacao: "apps"},
    { nome: "Delphi", nota: 5, utilizacao: "desktop"},
    { nome: "Java", nota: 9, utilizacao: "API"},
    { nome: "Python", nota: 10, utilizacao: "Data Science"},
    { nome: "C#", nota: 9, utilizacao: "API"}
]

const nomeLingaguens = linguagens.map((value) => {
    return value.nome 
})
console.log(nomeLingaguens)

const nomeLingaguensNotas = linguagens.map((value) => {
    const { nome, nota } = value
    return { nome, nota }
})

console.log(nomeLingaguensNotas)

const linguagensNotaDez = linguagens.filter((value) => { //filtra com true ou false
    return value.nota === 10
})

console.log(linguagensNotaDez)

const mediaNota = linguagens.reduce((acumulador, value) => {
    return acumulador + value.nota
}, 0)/linguagens.length

console.log(mediaNota)