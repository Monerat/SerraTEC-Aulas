package br.com.serratec.lojinha.model.exceptions;

public class ResourceBadRequestException extends RuntimeException {
    
    static final Long serialVersionUID = 2L;

    public ResourceBadRequestException(String mensagem){
        super(mensagem);
    }

    // Not Found = 404
    // Bad Request = 400
}
