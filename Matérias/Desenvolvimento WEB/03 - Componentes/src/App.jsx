import { useState } from 'react'
import './App.css'
import Turma from './components/Turma/Turma'


function App() {

  return (
    <>
      <Turma ano= "2014" numero="10" alunos={["Gustavo","Joao","Maria"]}/>
      <Turma ano= "2016" numero="11" alunos={["José","Ana","Maria Eduarda"]}/>
    </>
  )
}

export default App
