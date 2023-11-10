import { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import { api } from "../api/api"

const Comentario = () => {
    const [comentario, setComentario] = useState({})
    const { id } = useParams()

    const getComentario = async () => {
        const response = await api.get(`/posts/${id}`)
        setComentario(response.data)
    }

    useEffect(() => {
        getComentario()
    }, [])

    return (
        <>
            <p>Autor: {comentario.autor}</p>
            <p />
            <br />
            <p>Comentario: {comentario.comentario}</p>
            <br />
            <p>Likes: {comentario.likes}</p>
        </>
    )
}

export default Comentario