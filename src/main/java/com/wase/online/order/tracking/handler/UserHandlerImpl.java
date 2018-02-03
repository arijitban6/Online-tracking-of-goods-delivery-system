package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.UserEntity;
import com.wase.online.order.tracking.repositery.SendEmail;
import com.wase.online.order.tracking.repositery.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ariji on 1/13/2018.
 */
@Service
public class UserHandlerImpl implements UserHandler {
    @Autowired
    UserRepository userRepository;

    @Autowired
    private SendEmail mail;

    @Override
    public UserEntity getUser(String Id) {

        UserEntity userEntity = userRepository.getOne(Id);
        userEntity.setPassword(null);
        return userEntity;
    }

    @Override
    public UserEntity createUser(UserEntity userEntity) {
            String password = createPassword(userEntity.getFirstName(),userEntity.getLastName(),userEntity.getPassword());
        try {
           mail.sendEmail(userEntity.getEmail(),"Welcome","Hi "+userEntity.getFirstName()+"!! your password is: "+password);
            userEntity.setPassword(password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        UserEntity userEntity1 = userRepository.save(userEntity);
        return userEntity1;
    }
    private String createPassword(String fName,String lname, String phonoNumber){

        return fName.substring(0,fName.length()-2)+phonoNumber.substring(phonoNumber.length()-3,phonoNumber.length())+fName.substring(0,fName.length()-2);
    }
}