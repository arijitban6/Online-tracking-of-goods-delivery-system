package com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery;

import com.google.gson.Gson;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.*;

import java.util.Date;

/**
 * Created by ariji on 1/13/2018.
 */
public class test {
    public static void main(String[] args) {
        Gson gson = new Gson();
        UserEntity userEntity = new UserEntity();
        userEntity.setEmail("");
        userEntity.setFirstName("");
        //userEntity.setId("");
        userEntity.setLastName("");
        userEntity.setPhoneNumber("");

        LoginEntity loginEntity = new LoginEntity();
        loginEntity.setPassword("");
        loginEntity.setEmail("");
        OrderEntity orderEntity = new OrderEntity();
        System.out.println(orderEntity);
        //orderEntity.setOrderDate(new Date());
        orderEntity.setOrderId("");
        orderEntity.setOrderStatus(OrderStatus.OrderPlaced);
        ItemEntity itemEntity = new ItemEntity();

        itemEntity.setDescription("");
        itemEntity.setId("");
        itemEntity.setName("");
        itemEntity.setPrice(new Long(12));
        orderEntity.setItem(itemEntity);
        orderEntity.setUser(userEntity);
        DeliveryAddressEntity deliveryAddressEntity = new DeliveryAddressEntity();
        deliveryAddressEntity.setAddress("dsf");
        deliveryAddressEntity.setCity("dsf");
        deliveryAddressEntity.setLandmark("dsf");
        deliveryAddressEntity.setLocation("dsf");
        deliveryAddressEntity.setPhoneNumber("dsf");
        deliveryAddressEntity.setPinCode("dsf");
        deliveryAddressEntity.setState("dsf");
        orderEntity.setDeliveryAddress(deliveryAddressEntity);
        String json = gson.toJson(orderEntity);
        System.out.println("xyz" + json);

    }
}
