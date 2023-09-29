let tabelaDeCasas = document.querySelector("#tabelaDeCasas tbody")

const casa1 = new Casa(200000, 65, 'Azul')
const casa2 = new Casa(1000000, 250, 'Cinza')
const casa3 = new Casa(150000, 45, 'Lilas')

const casas = []
casas.push(casa1, casa2, casa3)
console.log(casas)

function alterarTabela(casas) {
    // Limpar a minha tabela
    tabelaDeCasas.textContent = ''

    casas.forEach(el => {
        // Criando os elementos
        let tr = document.createElement('tr')

        let tdPreco = document.createElement('td')
        let tdArea = document.createElement('td')
        let tdCor = document.createElement('td')
        let tdLink = document.createElement('td')

        // Preenchendo os elementos com as informações
        tdPreco.innerHTML = `<p>${el.preco}</p>`
        tdArea.textContent = el.area
        tdCor.textContent = el.cor
        tdLink.innerHTML = `<a href="./paginaTeste.html">Link</a>`

        // Adicionando os elementos filhos aos seu Pai
        tr.appendChild(tdPreco)
        tr.appendChild(tdArea)
        tr.appendChild(tdCor)
        tr.appendChild(tdLink)

        tabelaDeCasas.appendChild(tr)
    })

}

alterarTabela(casas)

function mudarPagina() {
    window.open('paginaTeste.html', '_self')
}
