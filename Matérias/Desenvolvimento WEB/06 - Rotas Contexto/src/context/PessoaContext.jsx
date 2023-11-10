import { createContext, useState } from "react";

export const PessoaContext = createContext({})

export const PessoaProvider = ({ children }) => {
    const [nome, setNome] = useState('')
    const [sobrenome, setSobrenome] = useState('')
    const [pessoas, setPessoas] = useState([])

    return <PessoaContext.Provider value={{ nome, setNome, sobrenome, setSobrenome, pessoas, setPessoas }}>{children}</PessoaContext.Provider>
}