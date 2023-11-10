import { useEffect, useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [autor, setAutor] = useState('')
  const [comentario, setComentario] = useState('')
  const [listaPosts, setListaPosts] = useState([])

  useEffect(()=> {
  alert("Os post's foram alterados")
  },[listaPosts])

  const handlerChangeAutor = (event) => {
    setAutor(event.target.value)
  }

  const handlerChangeComentario = (event) => {
    setComentario(event.target.value)
  }

  const handleLimpar = () =>{
    setAutor("")
    setComentario("")
  }

  const handleSave = (e) =>{
    e.preventDefault()
    if(autor != "" && comentario !="" ){
      setListaPosts([...listaPosts,{autor, comentario}])
      handleLimpar()
    }else{
      alert("Não pode criar um post sem autor ou comentario")
    }
    
  }

  const handleRemover = (postDel) => {
    setListaPosts(listaPosts.filter((post) => post.autor !== postDel.autor && post.comentario !== postDel.comentario))
  }

  return (
    <>
    <div>
      <h2>Cadastro de Post's</h2>
      <form onSubmit={handleSave} onReset={handleLimpar}>
        <label>
          Autor:
          <br />
          <input value={autor} type="text" onChange={handlerChangeAutor} />
        </label>
        <br />

        <label>
          Comentario:
          <br />
          <textarea value={comentario} cols="30" rows="10" onChange={handlerChangeComentario}></textarea>
        </label>
        <br />

        <button type="reset">Limpar</button>
        <button type='submit'>Salvar</button>
        
      </form>
      </div>

      <hr />
      {listaPosts.map((post)=> {
        
        return (
          <div style={{ borderWidth: '2px', borderColor: 'gray', border: 'solid', borderRadius:'10px', marginTop: '2px' }} >
            <b>{post.autor}</b>
            <p>{post.comentario}</p>
            <button onClick={() => {handleRemover(post)}}>Remover</button>
          </div>
        )
      })}
      
    </>
  )
}

export default App
