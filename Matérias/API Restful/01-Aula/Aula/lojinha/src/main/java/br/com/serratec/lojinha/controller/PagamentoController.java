package br.com.serratec.lojinha.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PutMapping;

import br.com.serratec.lojinha.model.pagamento.Pagamento;
import br.com.serratec.lojinha.service.PagamentoService;

@RestController
@RequestMapping("/api/pagamentos")
public class PagamentoController {
    
    @Autowired
    private PagamentoService pagamentoService;

    @GetMapping
    public ResponseEntity<List<Pagamento>> obterTodos(){
        return ResponseEntity.ok(pagamentoService.obterTodos());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Pagamento> obter(@PathVariable long id){
        return ResponseEntity.ok(pagamentoService.obter(id));
    }

    @PostMapping
    public ResponseEntity<Pagamento> adicionar(@RequestBody Pagamento pagamento){
        return new ResponseEntity<>(pagamentoService.adicionar(pagamento),HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Pagamento> atualizar(@PathVariable long id, @RequestBody Pagamento pagamento){
        return ResponseEntity.ok(pagamentoService.atualizar(id, pagamento));
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<?> deletar(@PathVariable Long id){
        pagamentoService.deletar(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
