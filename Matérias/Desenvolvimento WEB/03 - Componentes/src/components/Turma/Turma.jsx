import Aluno from "../Aluno/Aluno"


const Turma = ({numero, alunos, ano}) => {
    const estilo = {
        fontWeight: 'bold'
    }
    
    return <div style={estilo}>
                <p>Ano de formação: {ano}</p>
                <p>Esses são os alunos da Turma {numero}:</p>
                {alunos.map((aluno) => {
                    return <Aluno nome = {aluno} />
                })}
                <Button variant = 'contained'>Olá</Button> 
            </div>
}

export default Turma