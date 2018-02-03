package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.UserEntity;

/**
 * Created by ariji on 1/13/2018.
 */
public interface UserHandler {
    UserEntity getUser(String Id);

    UserEntity createUser(UserEntity userEntity);
}
