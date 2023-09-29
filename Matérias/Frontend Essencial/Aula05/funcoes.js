function multiplicar(num1, num2){
    return num1 * num2
}

console.log(multiplicar(2,2))

//função anonima
const soma = function (num1, num2){
    return num1+num2
}

console.log(soma(2,3))

const numeros = [1,2,3,4,5]
console.log(numeros)

numeros.push(10)

console.log(numeros)

//funcao anonima mais arrow function
const numerosMultDois = numeros.map(numero => numero*2)

console.log(numerosMultDois)

let hello = function(){
    window.alert('Ola')
}

hello = () =>{
    alert("Olá")
}

hello = () => alert("Olá")

hello()
