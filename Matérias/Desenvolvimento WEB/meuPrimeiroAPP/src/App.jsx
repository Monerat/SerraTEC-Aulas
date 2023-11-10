import { useState } from 'react'
import './App.css'

function App() {

  return (
    <>
      <section>
        <header>
          <h2>Serratec / Mentoria de Carreira / </h2>
        </header>
      </section>
      <section>
        <h2>Gustavo Monerat Rosa</h2>
        <h3>Engenheiro de Computação</h3>
        <h3>minha missao de vida é</h3>
        <div className='container'>
          <div className='forcas'>
            <ul>Forças
              <li>Perseverança</li>
              <li>Resiliencia</li>
            </ul>   
          </div>
          <div className='fraquezas'>
            <ul>Fraquezas
              <li>Jeito de falar</li>
              <li>Preguiça</li>
            </ul> 
          </div>
        </div>
        <h3>Meu trabalho para constante progresso</h3>
        <h3>Quais são as crenças e valores mais importantes</h3>
        <div>
          <div className='prazo curto'></div>
          <div className='prazo medio'></div>
          <div className='prazo longo'></div>
        </div>
        <h3></h3>
      </section>          
    </>
  )
}

export default App