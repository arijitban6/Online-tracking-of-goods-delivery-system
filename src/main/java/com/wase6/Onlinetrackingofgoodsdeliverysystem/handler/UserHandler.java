package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;

/**
 * Created by ariji on 1/13/2018.
 */
public interface UserHandler {
    UserEntity getUser(String Id);

    UserEntity createUser(UserEntity userEntity);
}
