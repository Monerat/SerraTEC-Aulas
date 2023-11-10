import { useContext } from "react"
import { PessoaContext } from "../context/PessoaContext"

const Listagem = () => {
    const { pessoas } = useContext(PessoaContext)

    return (
        <>
            {pessoas.map((pessoa, index) => <p key={index}>Olá {pessoa.nome} {pessoa.sobrenome}</p>)}
        </>
    )
}

export default Listagem