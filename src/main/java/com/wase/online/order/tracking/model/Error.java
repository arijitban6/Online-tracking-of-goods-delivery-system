package com.wase.online.order.tracking.model;

import lombok.*;
import org.springframework.http.HttpStatus;

/**
 * Created by ariji on 1/13/2018.
 */

@Data
public class Error {
    private HttpStatus status;
    private String error;
    private String message;

    public Error(ErrorBuilder errorBuilder) {
        this.status = errorBuilder.getStatus();
        this.error = errorBuilder.getError();
        this.message = errorBuilder.getMessage();
    }
}
