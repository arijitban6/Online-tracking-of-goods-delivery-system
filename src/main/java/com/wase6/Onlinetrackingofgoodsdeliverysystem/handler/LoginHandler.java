package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.exception.InavlidUserException;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.LoginEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;

/**
 * Created by arijit on 1/13/2018.
 */
public interface LoginHandler {
    public UserEntity doLogIn(LoginEntity loginEntity) throws InavlidUserException;
}
