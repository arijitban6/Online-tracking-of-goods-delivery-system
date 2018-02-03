package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.LoginEntity;
import com.wase.online.order.tracking.model.UserEntity;

/**
 * Created by ariji on 1/13/2018.
 */
public class AuthenticateUser {
    public static boolean isValidUser(LoginEntity loginEntity, UserEntity userEntity){
            return loginEntity.getPassword().equals(userEntity.getPassword());
    }
}
