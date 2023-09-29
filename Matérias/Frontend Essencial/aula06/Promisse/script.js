
// Promisse
/*
- É um objeto JavaScript com a promessa de que algo será realizado
- É usado para operações assíncronas
    - Carregar um arquivo (JSON, foto, etc)
    - Leitura de dados de uma API

- Uma Promisse possui 4 estágios
    - Pending: Estado inicial, assim que o Objeto da promessa é Iniciado
    - Fulfilled: A promessa foi concluida com sucesso
    - Rejected: A promessa foi rejeitada, houve algum erro
    - Settled: Seja com sucesso ou com erro, ela foi finalmente concluida
*/

/*
console.log('pedir uber')

const promessa = new Promise((resolve, reject) => {
    return resolve('carro chegou')
})

console.log('aguardando')

promessa.then(result => console.log(result))
*/

/*
console.log('pedir uber')

const promessa = new Promise((resolve, reject) => {
    return reject('Pedido negado!')
})

console.log('aguardando')

promessa
.then(result => console.log(result))
.catch(e => console.log(e))
*/

/*
console.log('pedir uber')

let aceitar = true
const promessa = new Promise((resolve, reject) => {
    if (aceitar) {
        return resolve('carro chegou')
    }
    return reject('Pedido negado!')
})

console.log('aguardando')

promessa
.then(result => console.log(result))
.catch(e => console.log(e))
.then(d => console.log('Finalizando o Pedido'))
*/


let repos = []
function startRepo() {
    fetch('https://api.github.com/users/albertompaz').then(r => r.json()).then(response => {
        fetch(response.repos_url).then(r => r.json()).then(response => {
            repos = response.map(e => e.name)
            console.log(repos)
        })
    })
}

// startRepo()

function viaCep(cep) {
    fetch(`https://viacep.com.br/ws/${cep}/json/`).then(r => r.json())
    .then(response => console.log(response))
    .catch(e => {
        console.log(e)
    })
}
// viaCep(25655090)

async function viaCep2(cep) {
    try {
        const retorno = await fetch(`https://viacep.com.br/ws/${cep}/json/`).then(r => r.json())
        console.log(retorno)
    } catch (error) {
        console.log(error)
    } finally {
        console.log('acabou a chamada')
    }
}

viaCep2(25954170)
