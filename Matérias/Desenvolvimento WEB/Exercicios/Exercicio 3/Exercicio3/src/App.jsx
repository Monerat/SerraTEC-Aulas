import { useState } from 'react'
import './App.css'
import Contato from './components/Contato'

function App() {
  const [contatos, setContatos] = useState([])
  const [newContato, setNewContato] = useState({})
  const [nome, setNome] = useState('')
  const [telefone, setTelefone] = useState('')
  const [temWhatstapp, setTemWhatsapp] = useState(false)
  const [observacao, setObservacao] = useState('')
  
  const hadleChangeNome = (event)=>{
    setNome(event.target.value)
  }

  const hadleChangeTelefone = (event)=>{
    setTelefone(event.target.value)
  }

  const hadleChangeTemWhatsapp = ()=>{
    setTemWhatsapp(!temWhatstapp)
  }

  const hadleChangeObservacao = (event)=>{
    setObservacao(event.target.value)
  }

  const handleNewContato = () => {
    setNewContato(() => ({nome: nome,
                          telefone: telefone,
                          temWhatstapp: temWhatstapp,
                          observacao: observacao}))
    console.log(nome)
    console.log(newContato)
    // setContatos([...contatos, newContato])
    // console.log(contatos)
    // setNome("")
    // setTelefone("")
    // setTemWhatsapp(false)
    // setObservacao("")
  }
  
  const handleLimparCampos = () => {
    setNome("")
    setTelefone("")
    setTemWhatsapp(false)
    setObservacao("")
  }

  return (
    <>
      <div>
        <label>Nome :
          <br />
          <input onChange={hadleChangeNome} value={nome} type="text" placeholder='Gustavo' />
        </label>
        <br />
        <label>Telefone :
          <br />
          <input onChange={hadleChangeTelefone} value={telefone} type="text" placeholder='21999999999' />
        </label>
        <br />
        <br />
        <label>Tem Whatsapp : <span>&nbsp;&nbsp;</span>
          <input onChange={hadleChangeTemWhatsapp} checked={temWhatstapp} type="checkbox" />
          <br />
        </label>
        <br />
        <label>Observação :
          <br />
          <input onChange={hadleChangeObservacao} value={observacao} type="text" placeholder='Aprendendo como utilizar o React' />
          <br />
        </label>
        <br />
        <button onClick={handleLimparCampos}>Limpar</button> 
        <span>&nbsp;&nbsp;</span>
        <button onClick={handleNewContato}>Salvar</button>
      </div>
      <hr />
      <Contato name = {nome} tel = {telefone} wpp={temWhatstapp} obs={observacao} />
      
      {/* {contatos.map((value) =>{
        <Contato name = {value.nome} />
      })} */}
      
    </>
  )
}

export default App