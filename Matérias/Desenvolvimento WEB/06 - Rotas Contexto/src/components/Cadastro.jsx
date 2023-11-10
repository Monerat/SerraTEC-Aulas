import { useContext } from "react"
import { PessoaContext } from "../context/PessoaContext"
import { useNavigate } from "react-router-dom"


const Cadastro = () => {
    const navigate = useNavigate()
    const { nome, setNome, sobrenome, setSobrenome, pessoas, setPessoas } = useContext(PessoaContext)

    const handleSalvar = (e) => {
        e.preventDefault()
        // setPessoas([...pessoas, { nome, sobrenome }])        
        setPessoas((prevValue) => [...prevValue, { nome, sobrenome }])
        navigate('/listagem')
    }

    return (
        <>
            <form onSubmit={handleSalvar}>
                <label>Nome</label>
                <br />
                <input value={nome} onChange={(e) => { setNome(e.target.value) }} />
                <p />
                <label>Sobrenome</label>
                <br />
                <input value={sobrenome} onChange={(e) => {setSobrenome(e.target.value)}} />
                <br />
                <button type='submit'>Salvar</button>
            </form>
        </>
    )
}

export default Cadastro