const Contato = (props) => {
    let whats
    if(props.wpp){
        whats = "Sim"
    }
    else whats = "Não"

    return  <div>
                <p>Contato</p>
                <p>Nome: {props.name}</p>
                <p>Telefone: {props.tel}</p>
                <p>Tem WhatsApp: {whats}</p>
                <p>Observação: {props.obs}</p>
            </div>
            
}

export default Contato