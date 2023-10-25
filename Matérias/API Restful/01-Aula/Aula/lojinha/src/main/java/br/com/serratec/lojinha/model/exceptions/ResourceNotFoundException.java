package br.com.serratec.lojinha.model.exceptions;

public class ResourceNotFoundException extends RuntimeException {
    
    static final Long serialVersionUID = 1L;

    public ResourceNotFoundException(String mensagem){
        super(mensagem);
    }

    
    // Not Found = 404
    // Bad Request = 400
}
