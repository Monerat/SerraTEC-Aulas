package br.com.webank.webank.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.webank.webank.model.ContaBancaria;
import br.com.webank.webank.repository.ContaBancariaRepository;

@Service
public class ContaBancariaService {

    @Autowired
    private ContaBancariaRepository contaBancariaRepository;

    public List<ContaBancaria> obterTodos(){
        return contaBancariaRepository.findAll();
    }

    public ContaBancaria obterPorId(Long id){
        Optional<ContaBancaria> opContaBancaria = contaBancariaRepository.findById(id);
        
        if(opContaBancaria.isEmpty()){
            throw new RuntimeException("Nunhum registro encontrado para o ID: " + id);
        }

        return opContaBancaria.get();
    }
    //Save serve tanto para adicionar quanto para atualizar, ele verifica se aquele id já existe na base, se existir ele atualiza, senão ele cria um novo
    public ContaBancaria adicionar(ContaBancaria contaBancaria){
        contaBancaria.setId((long) 0);
        return contaBancariaRepository.save(contaBancaria);
    }

    public ContaBancaria atualizar(Long id, ContaBancaria contaBancaria){
        obterPorId(id);
        contaBancaria.setId(id);
        return contaBancariaRepository.save(contaBancaria);
    }

    public void deletar(Long id){
        obterPorId(id);

        contaBancariaRepository.deleteById(id);
    }
}
