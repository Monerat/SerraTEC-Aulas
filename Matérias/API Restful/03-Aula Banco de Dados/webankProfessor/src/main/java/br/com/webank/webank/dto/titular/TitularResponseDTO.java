package br.com.webank.webank.dto.titular;

import java.util.List;

import br.com.webank.webank.dto.constaBancaria.ContaBancariaResponseDTO;
import br.com.webank.webank.dto.endereco.EnderecoResponseDTO;

public class TitularResponseDTO extends TitularBaseDTO{
    private Long id;

    private EnderecoResponseDTO endereco;
    private List<ContaBancariaResponseDTO> contas;
    
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public EnderecoResponseDTO getEndereco() {
        return endereco;
    }
    public void setEndereco(EnderecoResponseDTO endereco) {
        this.endereco = endereco;
    }
    public List<ContaBancariaResponseDTO> getContas() {
        return contas;
    }
    public void setContas(List<ContaBancariaResponseDTO> contas) {
        this.contas = contas;
    }

    
}
