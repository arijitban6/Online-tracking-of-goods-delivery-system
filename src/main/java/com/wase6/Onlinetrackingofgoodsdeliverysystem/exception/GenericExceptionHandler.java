package com.wase6.Onlinetrackingofgoodsdeliverysystem.exception;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.Error;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.ErrorBuilder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.orm.jpa.JpaObjectRetrievalFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * Created by ariji on 1/13/2018.
 */
@ControllerAdvice
public class GenericExceptionHandler {


    @ExceptionHandler(RuntimeException.class)
     public ResponseEntity<Error> generateRuntimeError(Exception ex){
        return new ResponseEntity<Error>(new Error(extractError(ex)),HttpStatus.INTERNAL_SERVER_ERROR);
     }

    @ExceptionHandler(JpaObjectRetrievalFailureException.class)
    public ResponseEntity<Error> generateJpaObjectRetrievalFailureException(Exception ex){
        return new ResponseEntity<Error>(new Error(extractError(ex)),HttpStatus.BAD_GATEWAY);
    }
    @ExceptionHandler(InavlidUserException.class)
    public ResponseEntity<Error> invalidUserException(Exception ex){
        return new ResponseEntity<Error>(new Error(extractError(ex)),HttpStatus.UNAUTHORIZED);
    }

     private ErrorBuilder extractError(Exception ex){
         return new ErrorBuilder().setStatus(HttpStatus.INTERNAL_SERVER_ERROR)
                 .setMessage(ex.getMessage())
                 .setError("Internal Error").build();
     }

}
