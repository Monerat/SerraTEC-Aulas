package br.com.serratec.lojinha.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.serratec.lojinha.model.exceptions.ResourceNotFoundException;
import br.com.serratec.lojinha.model.pagamento.Pagamento;
import br.com.serratec.lojinha.repository.PagamentoRepository;

@Service
public class PagamentoService {
    
    @Autowired
    private PagamentoRepository pagamentoRepository;

    public List<Pagamento> obterTodos(){
        return pagamentoRepository.obterTodos();
    }

    public Pagamento obter(long id){
        // Aqui eu colocaria a minha regra, validação e etc...
        Pagamento pagamento = pagamentoRepository.obter(id);

        if(pagamento == null){
            throw new ResourceNotFoundException("Não foi possivel encontrar o pagamento com Id: " + id);
        }

        return pagamento;
    }
    
    public Pagamento adicionar(Pagamento pagamento){
        // Aqui validar se tudo do pagamento está ok antes de mandar salvar no repository...
        return pagamentoRepository.adicionar(pagamento);
    }

    public Pagamento atualizar(long id, Pagamento pagamento){
        // Aqui validar se tudo do pagamento está ok antes de mandar salvar no repository...
        Pagamento pagamentoEncontrado = pagamentoRepository.obter(id);

        if(pagamentoEncontrado == null){
            throw new ResourceNotFoundException("Não foi possivel atualizar o pagamento com Id: " + id);
        }

        pagamento.setId(id);

        return pagamentoRepository.atualizar(pagamento);     
    }

    public void deletar(long id){
       pagamentoRepository.deletar(id);
    }
}
