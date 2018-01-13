package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.LoginEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;

/**
 * Created by ariji on 1/13/2018.
 */
public class AuthenticateUser {
    public static boolean isValidUser(LoginEntity loginEntity, UserEntity userEntity){
            return loginEntity.getPassword().equals(userEntity.getPassword());
    }
}
