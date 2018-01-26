package com.wase6.Onlinetrackingofgoodsdeliverysystem.controller;


import com.wase6.Onlinetrackingofgoodsdeliverysystem.exception.InavlidUserException;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.LoginHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.OrderHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.UserHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.handler.UserOrderRelHandler;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.*;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Created by arijit on 1/13/2018.
 */
@RestController
public class Controller {
    @Autowired
    UserHandler UserHandlerImpl;
    @Autowired
    LoginHandler LoginHandlerImpl;
    @Autowired
    OrderHandler orderHandlerl;
    @Autowired
    UserOrderRelHandler UserOrderRelImpl;

    @RequestMapping(value = "api/user/{uid}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserEntity> getUser( @PathVariable String uid) {
        UserEntity user = UserHandlerImpl.getUser(uid);
        System.out.println(user);
        System.out.println("Get user");
        return new ResponseEntity<UserEntity>(UserHandlerImpl.getUser(uid),HttpStatus.OK);
    }
    @RequestMapping(value = "api/user",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserEntity> signUp(@RequestBody UserEntity input) {
        System.out.println("user creating" + input);
        System.out.println("create user");
        return new ResponseEntity<UserEntity>(UserHandlerImpl.createUser(input),HttpStatus.OK);
    }

    @RequestMapping(value = "api/login",
            method = RequestMethod.PUT,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserEntity> logIn(@RequestBody LoginEntity input) throws InavlidUserException {
        UserEntity userEntity = LoginHandlerImpl.doLogIn(input);
        System.out.println("login user");
        if(userEntity !=null){
            return new ResponseEntity<UserEntity>(userEntity,HttpStatus.OK);
        }
        return new ResponseEntity<UserEntity>(HttpStatus.UNAUTHORIZED);
    }

    @RequestMapping(value = "api/placeOrder",
            method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<OrderEntity> placeOrder(@RequestBody OrderEntity input) {
        System.out.println("create order");
        return new ResponseEntity<OrderEntity>(orderHandlerl.placeOrder(input),HttpStatus.OK);
    }

    @RequestMapping(value = "api/placeOrder/{uid}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<OrderEntity> getOrder(@PathVariable String uid) {
        System.out.println("Get order");
        OrderEntity orderEntity = new OrderEntity();
        return new ResponseEntity<OrderEntity>(orderHandlerl.getOrder(uid),HttpStatus.OK);
    }

    @RequestMapping(value = "api/getAllOrder/{uid}",
            method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<UserOrderRelEntity> getAllOrder(@PathVariable String uid) {
        UserOrderRelEntity userOrderRelEntity= UserOrderRelImpl.getAllOrder(uid);
        System.out.println(userOrderRelEntity);
        System.out.println("Get all order");
        return new ResponseEntity<UserOrderRelEntity>(userOrderRelEntity,HttpStatus.OK);
    }

    @RequestMapping(value = "api/upDateOrderStatus/{orderId}",
            method = RequestMethod.PATCH,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<OrderEntity> upDateOrderStatus(@PathVariable ("orderId") String orderId) {
        System.out.println("update OrderStatus");
        return new ResponseEntity<OrderEntity>(orderHandlerl.upDateOrderStatus(orderId),HttpStatus.OK);
    }


}
