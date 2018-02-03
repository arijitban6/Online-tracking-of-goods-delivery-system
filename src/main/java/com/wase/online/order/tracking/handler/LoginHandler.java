package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.LoginEntity;
import com.wase.online.order.tracking.exception.InavlidUserException;
import com.wase.online.order.tracking.model.UserEntity;

/**
 * Created by arijit on 1/13/2018.
 */
public interface LoginHandler {
    public UserEntity doLogIn(LoginEntity loginEntity) throws InavlidUserException;
}
