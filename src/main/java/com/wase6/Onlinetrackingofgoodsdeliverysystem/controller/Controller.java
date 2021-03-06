package com.wase6.Onlinetrackingofgoodsdeliverysystem.controller;


import com.wase6.Onlinetrackingofgoodsdeliverysystem.exception.InavlidUserException;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.LoginHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.OrderHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.UserHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.LoginEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by arijit on 1/13/2018.
 */
@org.springframework.stereotype.Controller
public class Controller {
    @Autowired
    UserHandler UserHandlerImpl;
    @Autowired
    LoginHandler LoginHandlerImpl;
    @Autowired
    OrderHandler orderHandlerl;

    @RequestMapping("api/user/{uid}")
    public String getUser(Model model, @PathVariable String uid) {
        UserEntity user = UserHandlerImpl.getUser(uid);
        model.addAttribute("user","sdkjgsd");
        System.out.println(user);
        //return new ResponseEntity<UserEntity>(UserHandlerImpl.getUser(uid),HttpStatus.OK);
        return "hello";
    }
    @RequestMapping(value = "api/user",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserEntity> signUp(@RequestBody UserEntity input) {

        return new ResponseEntity<UserEntity>(UserHandlerImpl.createUser(input),HttpStatus.OK);
    }

    @RequestMapping(value = "api/login",
            method = RequestMethod.PUT,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserEntity> logIn(@RequestBody LoginEntity input) throws InavlidUserException {
        UserEntity userEntity = LoginHandlerImpl.doLogIn(input);
        if(userEntity !=null){
            return new ResponseEntity<UserEntity>(userEntity,HttpStatus.OK);
        }
        return new ResponseEntity<UserEntity>(HttpStatus.UNAUTHORIZED);
    }

    @RequestMapping(value = "api/placeOrder",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<OrderEntity> placeOrder(@RequestBody OrderEntity input) {
        return new ResponseEntity<OrderEntity>(orderHandlerl.placeOrder(input),HttpStatus.OK);
    }
    @RequestMapping(value = "api/placeOrder/{uid}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<OrderEntity> getOrder(@PathVariable String uid) {
        return new ResponseEntity<OrderEntity>(orderHandlerl.getOrder(uid),HttpStatus.OK);
    }

    @RequestMapping("/")
    public String home(Map<String, Object> model) {
        model.put("message", "HowToDoInJava Reader !!");
        System.out.println("kjsdnf");
        return "index";
    }
}
