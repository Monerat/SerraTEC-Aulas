package br.com.webank.webank.dto.constaBancaria;

import java.util.Date;

public class ContaBancariaResponseDTO extends ContaBancariaBaseDTO {
    private Long id;
    private Date dataCadastro;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public Date getDataCadastro() {
        return dataCadastro;
    }
    
    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }
    
}
