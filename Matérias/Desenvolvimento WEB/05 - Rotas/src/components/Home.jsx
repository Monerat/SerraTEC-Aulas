import { useState } from "react"
import NavBar from "./NavBar"
import { Link } from "react-router-dom"

const Home = () =>{
    const [nome, setNome] = useState('')
    return (
        <>
            <h1> Bem vindo a nossa rede social</h1>
            <NavBar />
            <br />
            <br />
            <hr />
            <br />
            <br />
            <input value={nome} onChange={(e) => {setNome(e.target.value)}} type="text" />
            <br />
            <Link to={`/pessoas/${nome}`}>Entrar</Link>
        </> 
    )
}

export default Home