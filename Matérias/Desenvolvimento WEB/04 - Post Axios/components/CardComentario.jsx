import { api } from "../src/api/api"

const CardComentario = ({id, autor, comentario, getPosts}) => {
    const handleRemover = () => {
        api.delete(`/posts/${id}`)
        getPosts()
    }
    return (
        <div style={{ borderWidth: '2px', borderColor: 'gray', border: 'solid', borderRadius:'10px', marginTop: '2px' }} >
          <b>{autor}</b>
          <p>{comentario}</p>
          <button onClick={handleRemover}>Remover</button>
        </div>
      )
}
export default CardComentario