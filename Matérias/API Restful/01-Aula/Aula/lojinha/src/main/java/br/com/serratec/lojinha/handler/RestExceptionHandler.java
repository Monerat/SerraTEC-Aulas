package br.com.serratec.lojinha.handler;

import java.util.Date;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import br.com.serratec.lojinha.common.ConversorData;
import br.com.serratec.lojinha.model.error.ErrorResposta;
import br.com.serratec.lojinha.model.exceptions.ResourceBadRequestException;
import br.com.serratec.lojinha.model.exceptions.ResourceNotFoundException;

@ControllerAdvice
public class RestExceptionHandler {
    
    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<ErrorResposta> handlerResourceNotFoundException(ResourceNotFoundException ex){
        String data = ConversorData.converterDateParaDataHora(new Date());
        ErrorResposta erro = new ErrorResposta(404,"Not Found", ex.getMessage(), data );
        
        return new ResponseEntity<>(erro,HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(ResourceBadRequestException.class)
    public ResponseEntity<ErrorResposta> handlerResourceBadRequestException(ResourceBadRequestException ex){
        String data = ConversorData.converterDateParaDataHora(new Date());
        ErrorResposta erro = new ErrorResposta(400,"Bad Request", ex.getMessage(), data );
        
        return new ResponseEntity<>(erro,HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorResposta> handlerException(Exception ex){
        String data = ConversorData.converterDateParaDataHora(new Date());
        ErrorResposta erro = new ErrorResposta(500,"Internal Server Error", ex.getMessage(), data );
        
        return new ResponseEntity<>(erro,HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
