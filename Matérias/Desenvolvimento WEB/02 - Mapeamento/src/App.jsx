import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Aluno from './components/Aluno'

function App() {
  const alunos = [
    {nome: "Gustavo", idade: 29, linguagem: "Python", cor: "blue", situacao: "Aprovado"},
    {nome: "Raphael", idade: 29, linguagem: "Javascript", cor: "red", situacao: "Aprovado"}
  ]

  return (
    <>
      <Aluno situacao="Aprovado"/>
      {alunos.map((value) => (
        <div>
          <p>Nome: {value.nome}</p>
          <p>Idade: {value.idade}</p>
          <p>Linguagem preferida: {value.linguagem}</p>
          <p style={{backgroundColor: value.cor}}> Cor preferida: {value.cor}</p>
          <hr />
        </div>
      ))}

      {/* <div>
        <p>Nome: Gustavo</p>
        <p>Idade: 29</p>
        <p>Linguagem preferida: Python</p>
        <p>Cor preferida: Azul</p>
      </div> */}
    </>
  )
}

export default App
