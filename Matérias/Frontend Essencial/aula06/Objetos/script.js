/*
// JSON -> Javascript Object Notation
const json =
{
    "nome": 'Alberto',
    "idade": 28,
    "altura": 1.87,
    "hobby": ['Jogos', 'Series']
}

// Formato XML
<nome>Alberto</nome>
<idade>28</idade>
<altura>1.87</altura>
<hobby>Jogos, Series</hobby>
*/

const pessoa = {
    nome: 'Alberto',
    idade: 28,
    altura: 1.87,
    hobby: ['Jogos', 'Series']
}

const pessoa1 = {
    nome: 'Fulano',
    idade: 17,
    altura: 1.87,
    hobby: ['Jogos', 'Series']
}

const pessoa2 = {
    nome: 'Beltrano',
    idade: 40,
    altura: 1.87,
    hobby: ['Jogos', 'Series']
}

let pessoas = []
pessoas.push(pessoa)
pessoas.push(pessoa1)
pessoas.push(pessoa2)

console.log(pessoas)

const idades = pessoas.map(el => el.idade)
console.log(idades)

const maiorDeIdade = pessoas.filter(el => el.idade > 18)
console.log(maiorDeIdade)

let carro1 = new Car("Ford", 2014)
let carro2 = new Car("Fiat", 2020)

carros = []
carros.push(carro1)
carros.push(carro2)

console.log(carros[0].nome)

carros.map(el => {
    new Car(el.nome, el.ano)
})

// JSON.stringify -> Converte de objeto para texto
localStorage.setItem("carros", JSON.stringify(carros))

// JSON.parse -> converte de texto para objeto
let novoVetor = JSON.parse(localStorage.getItem("carros"))

/////////////

localStorage.setItem("carro", JSON.stringify(carro1))
let carro = JSON.parse(localStorage.getItem("carro")) //array

// localStorage.removeItem("carro")

console.log('------')
console.log(novoVetor)

console.log(carro)
