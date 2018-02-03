package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.LoginEntity;
import com.wase.online.order.tracking.repositery.UserRepository;
import com.wase.online.order.tracking.exception.InavlidUserException;
import com.wase.online.order.tracking.model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ariji on 1/13/2018.
 */
@Service
public class LoginHandlerImlp implements LoginHandler{
    @Autowired
    UserRepository userRepository;
    @Override
    public UserEntity doLogIn(LoginEntity loginEntity) throws InavlidUserException {
        UserEntity userEntity =  userRepository.getOne(loginEntity.getEmail());
        if(userEntity !=null ){
            if(!AuthenticateUser.isValidUser(loginEntity, userEntity)){
                throw new InavlidUserException("Invalid User");
            }
            userEntity.setPassword("");
            return userEntity;
        }
        return null;
    }
}
