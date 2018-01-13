package com.wase6.Onlinetrackingofgoodsdeliverysystem.model;

import org.springframework.http.HttpStatus;

/**
 * Created by ariji on 1/13/2018.
 */
public class ErrorBuilder {
    private HttpStatus status;
    private String error;
    private String message;

    public HttpStatus getStatus() {
        return status;
    }

    public String getError() {
        return error;
    }

    public String getMessage() {
        return message;
    }

    public ErrorBuilder setStatus(HttpStatus status) {
        this.status = status;
        return this;
    }

    public ErrorBuilder setError(String error) {
        this.error = error;
        return this;
    }

    public ErrorBuilder setMessage(String message) {
        this.message = message;
        return this;
    }
    public ErrorBuilder build(){
        return this;
    }
}
