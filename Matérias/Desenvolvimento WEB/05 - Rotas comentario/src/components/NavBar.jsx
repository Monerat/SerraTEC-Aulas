import { Link } from "react-router-dom"

const NavBar = () => {
    return (
        <>
            <Link to={"/"}>Home</Link>
            <br />
            <Link to={"/cadastrar"}>Cadastrar</Link>
            <br />
            <Link to={"/comentarios"}>Comentarios</Link>
        </>
    )
}

export default NavBar