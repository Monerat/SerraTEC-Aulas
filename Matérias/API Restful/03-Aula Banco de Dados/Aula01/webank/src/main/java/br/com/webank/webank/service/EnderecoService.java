package br.com.webank.webank.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.webank.webank.model.Endereco;
import br.com.webank.webank.repository.EnderecoRepository;

@Service
public class EnderecoService {

    @Autowired
    private EnderecoRepository enderecoRepository;

    public List<Endereco> obterTodos(){
        return enderecoRepository.findAll();
    }

    public Endereco obterPorId(Long id){
        Optional<Endereco> opEndereco = enderecoRepository.findById(id);
        
        if(opEndereco.isEmpty()){
            throw new RuntimeException("Nunhum registro encontrado para o ID: " + id);
        }

        return opEndereco.get();
    }
    //Save serve tanto para adicionar quanto para atualizar, ele verifica se aquele id já existe na base, se existir ele atualiza, senão ele cria um novo
    public Endereco adicionar(Endereco endereco){
        endereco.setId((long) 0);
        return enderecoRepository.save(endereco);
    }

    public Endereco atualizar(Long id, Endereco endereco){
        obterPorId(id);
        endereco.setId(id);
        return enderecoRepository.save(endereco);
    }

    public void deletar(Long id){
        obterPorId(id);

        enderecoRepository.deleteById(id);
    }
}
