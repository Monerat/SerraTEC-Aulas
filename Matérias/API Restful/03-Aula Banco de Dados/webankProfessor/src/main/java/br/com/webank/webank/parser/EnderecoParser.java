package br.com.webank.webank.parser;

import br.com.webank.webank.dto.endereco.EnderecoRequestDTO;
import br.com.webank.webank.dto.endereco.EnderecoResponseDTO;
import br.com.webank.webank.model.Endereco;

public class EnderecoParser {
    
    public static Endereco converterEnderecoRequestEmEnderecoModel(EnderecoRequestDTO enderecoRequest){
        Endereco endereco = new Endereco();
        endereco.setId(0l);
        endereco.setCep(enderecoRequest.getCep());
        endereco.setLogradouro(enderecoRequest.getLogradouro());
        endereco.setNumero(enderecoRequest.getNumero());
        endereco.setComplemento(enderecoRequest.getComplemento());
        endereco.setBairro(enderecoRequest.getBairro());
        endereco.setCidade(enderecoRequest.getCidade());
        endereco.setUf(enderecoRequest.getUf());

        return endereco;
    }

    public static EnderecoResponseDTO converterEnderecoModelEmEnderecoResponse(Endereco enderecoModel){
        EnderecoResponseDTO endereco = new EnderecoResponseDTO();
        endereco.setId(enderecoModel.getId());
        endereco.setCep(enderecoModel.getCep());
        endereco.setLogradouro(enderecoModel.getLogradouro());
        endereco.setNumero(enderecoModel.getNumero());
        endereco.setComplemento(enderecoModel.getComplemento());
        endereco.setBairro(enderecoModel.getBairro());
        endereco.setCidade(enderecoModel.getCidade());
        endereco.setUf(enderecoModel.getUf());

        return endereco;
    }
}
