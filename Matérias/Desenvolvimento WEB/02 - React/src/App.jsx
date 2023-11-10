import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0)
  //useState[0] valor do estado
  //useState[1] funcao responsavel por alterar o estado
  const [newValue,setNewValue] = useState(0)


  const handleAumentar = () => {
    setCount(count+1)
  }

  const handleDiminuir = () => {
    setCount(count-1)
  }

  const handleReset = () => {
    setCount(0)
  }

  const handleNewValue = () => {
    setCount(newValue)
  }

  return (
    <>
      <div>
        <h1>Contador</h1>
        <p>{count}</p>
        <button onClick={handleAumentar}>Aumentar</button>
        <button onClick={handleDiminuir}>Diminuir</button>
        <br />
        <br />
        <button onClick={handleReset}>Resetar</button>
        <hr />
        <input onChange={(event) => setNewValue(Number(event.target.value))} type="number" min={0} />
        <button onClick={handleNewValue}>Input</button>
      </div>
    </>
  )
}

export default App
