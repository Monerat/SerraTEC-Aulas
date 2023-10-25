package br.com.webank.webank.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.webank.webank.model.ContaBancaria;
import br.com.webank.webank.model.Endereco;
import br.com.webank.webank.model.Titular;
import br.com.webank.webank.repository.TitularRepository;

@Service
public class TitularService {

    @Autowired
    private TitularRepository titularRepository;

    @Autowired
    private EnderecoService enderecoService;

    @Autowired
    private ContaBancariaService contaBancariaService;


    public List<Titular> obterTodos(){
        return titularRepository.findAll();
    }

    public Titular obterPorId(Long id){
        Optional<Titular> opTitular = titularRepository.findById(id);
        
        if(opTitular.isEmpty()){
            throw new RuntimeException("Nunhum registro encontrado para o ID: " + id);
        }

        return opTitular.get();
    }
    //Save serve tanto para adicionar quanto para atualizar, ele verifica se aquele id já existe na base, se existir ele atualiza, senão ele cria um novo
    @Transactional
    public Titular adicionar(Titular titular){
        
        titular.setId((long) 0);
        titular = titularRepository.save(titular);
        
        Endereco endereco = titular.getEndereco();
        
        if(endereco.getId() == 0){
            endereco.setTitular(titular);
            enderecoService.adicionar(endereco);

            titular.setEndereco(endereco);
        }

        List<ContaBancaria> adicionadas = new ArrayList<>();

        for(ContaBancaria contaBancaria : titular.getContas()){
            if(contaBancaria.getId() == 0){
                contaBancaria.setTitular(titular);
                contaBancariaService.adicionar(contaBancaria);
                adicionadas.add(contaBancaria);
            }
        }
        titular.setContas(adicionadas);

        return titular;
    }

    public Titular atualizar(Long id, Titular titular){
        obterPorId(id);
        titular.setId(id);
        return titularRepository.save(titular);
    }

    public void deletar(Long id){
        obterPorId(id);

        titularRepository.deleteById(id);
    }
}
