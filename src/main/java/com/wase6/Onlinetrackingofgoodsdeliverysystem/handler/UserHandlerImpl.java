package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ariji on 1/13/2018.
 */
@Service
public class UserHandlerImpl implements UserHandler {
    @Autowired
    UserRepository userRepository;
    @Override
    public UserEntity getUser(String Id) {
        return userRepository.getOne(Id);
    }

    @Override
    public UserEntity createUser(UserEntity userEntity) {
        return userRepository.save(userEntity);
    }
}
