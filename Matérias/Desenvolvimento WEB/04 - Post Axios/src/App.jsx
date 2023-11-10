import { useEffect, useState } from 'react'
import { api } from './api/api'
import CardComentario from '../components/CardComentario'
import './App.css'

function App() {
  const [autor, setAutor] = useState('')
  const [comentario, setComentario] = useState('')
  const [listaPosts, setListaPosts] = useState([])

  //carregar na memoria os post's armazenados no json
  useEffect(() => {
    getPosts()
  },[])

  // useEffect(()=> {
  //   if (listaPosts.length >0)
  //     alert("Os post's foram alterados")
  // },[listaPosts])

  //função assincrona
  const getPosts = async() => {
    const response = await api.get("/posts")
    setListaPosts(response.data)
  }

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

  const handleSave = async (e) =>{
    e.preventDefault()
    if(autor != "" && comentario !="" ){
      const response = await api.post('/posts',
      {
        autor,
        comentario
      })
      getPosts()
      handleLimpar()
    }else{
      alert("Não pode criar um post sem autor ou comentario")
    }
    
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
      {listaPosts.map((post)=>
        <CardComentario autor={post.autor} 
        comentario={post.comentario}
        id = {post.id}
        getPosts = {getPosts}/>)
      }
    </>
  )
}

export default App
