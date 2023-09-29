let meuVetor = [19, "Alberto", ["texto1", "texto2"], true]


let idades = [18, 19, 17, 18, 17, 30]

idades.forEach(idade => {
    console.log(idade)
})

console.log('-----------------------')

for (let i=0; i < idades.length; i++) {
    console.log(idades[i])
}

console.log(idades.join(', '))

// MAP, FILTER, REDUCE
//  MAP
const idadesPor2 = idades.map(el => el*2)
console.log(idadesPor2.join(', '))

const maioresDeIdade = idades.map(el => el >= 18)
console.log(maioresDeIdade.join(', '))

console.log('---- Filter ----')
// Filter
const maiorIdadeFiltrado = idades.filter(el => el > 18)
console.log(maiorIdadeFiltrado.join(', '))

// REDUCE
const somaIdades = idades.reduce((acumulador, elemento) => {
    return acumulador + elemento
}, 0)

console.log(`A soma das idades é ${somaIdades}`)
let mediaIdades = somaIdades/idades.length
console.log(`A media das idades é: ${mediaIdades.toFixed(2)}`)

