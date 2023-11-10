import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [tarefas, setTarefas] = useState([])
  const [newTarefa, setNewTarefa] = useState('')

  const hadleChangeNewTarefa = (event)=>{
    setNewTarefa(event.target.value)
  }

  const handleAdicionarTarefa = () =>{
    setTarefas([...tarefas, newTarefa])
  }

  const handleConcluirTarefa = (tarefa) =>{
    setTarefas(tarefas.filter((value) => value!=tarefa))
  }

  return (
    <>
      <input type="text" onChange={hadleChangeNewTarefa}/>
      <button onClick={handleAdicionarTarefa}>Incluir tarefa</button>
      <br />
      <hr />
      {tarefas.map((tarefa) => (
        <div>
          {tarefa}
          <button onClick={() => {handleConcluirTarefa(tarefa)}}>Concluir</button>
        </div>
      ))}
    </>
  )
}

export default App
