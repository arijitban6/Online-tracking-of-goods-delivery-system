package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.exception.InavlidUserException;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.LoginEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.UserRepository;
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
