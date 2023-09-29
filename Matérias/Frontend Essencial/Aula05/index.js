console.log("Ola mundo")
document.write("Olá mundo")


var nome = "Gustavo" // variavel, função ; As variáveis declaradas com var têm escopo de função, o que significa que elas são visíveis em toda a função em que são declaradas.
let nome1 = "Gustavo" //variavel, local ; As variáveis declaradas com let têm escopo de bloco, o que significa que elas são visíveis apenas no bloco em que são declaradas.
const NOME2 = "Gustavo" //constante, local

nome1 = "Fulano"
console.log(nome1)

function exemploVar(){
    if(true){
        var x = 10
    }
    console.log(x)
}

exemploVar()

function exemploLet(){
    if(true){
        let x = 10
        console.log(x)
    }
}


exemploLet()

let titulo = document.getElementById("titulo")
console.log(titulo)
let subTitulo = document.getElementById("subTitulo")
console.log(subTitulo)

titulo.textContent = "Alterado com JS"
subTitulo.innerHTML = "<p>Inserindo um paragrafo dentro do subtitulo</p>"

let botao = document.getElementById("btn")
console.log(botao)

function alterarDiv(){
    console.log("Olá")
}

botao.addEventListener("click",(e)=>{
    alterarDiv()
})