package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.SendEmail;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;

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
            mail.sendEmail(userEntity.getEmail(),"","Hi your password is: "+password);
            userEntity.setPassword(password);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return userRepository.save(userEntity);
    }
    private String createPassword(String fName,String lname, String phonoNumber){
        return "123";
        //return fName.substring(0,fName.length()-2)+phonoNumber.substring(phonoNumber.length()-3,phonoNumber.length())+fName.substring(0,fName.length()-2);
    }
}
