import { useParams } from "react-router-dom"
import NavBar from "./NavBar"

const Pessoa = () => {
    const {nome} = useParams

    return (
        <>
        <NavBar />
        <p>Olá, {nome}</p>
        </>
    )
}

export default Pessoa