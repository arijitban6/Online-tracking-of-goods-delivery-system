package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderStatus;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.DeliveryAddrressRepository;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created by arijit on 1/13/2018.
 */
@Service
public class OrderHandlerImpl implements OrderHandler {

    private final List<String> status =  Arrays.asList("OrderPlaced", "Shipped", "OutForDelivery", "Delivered");


    @Autowired
    OrderRepository orderRepository;
    @Autowired
    DeliveryAddrressRepository deliveryAddrressRepository;


    @Override
    public OrderEntity placeOrder(OrderEntity orderEntity) {
        System.out.println(orderEntity);
        //deliveryAddrressRepository.save(orderEntity.getDeliveryAddress());
        return orderRepository.save(orderEntity);
    }

    @Override
    public OrderEntity getOrder(String oderId) {
        return orderRepository.getOne(oderId);
    }

    @Override
    public OrderEntity upDateOrderStatus(String orderId) {
        OrderEntity orderEntity = getOrder(orderId);
        if(!orderEntity.getOrderStatus().toString().equals(this.status.get(this.status.size()-1)))
            orderEntity.setOrderStatus(OrderStatus.valueOf(this.status.get(this.status.indexOf(orderEntity.getOrderStatus().toString())+1)));
        return orderRepository.save(orderEntity);
    }
}
