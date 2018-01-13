package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;

/**
 * Created by ariji on 1/13/2018.
 */
public interface OrderHandler {
    public OrderEntity placeOrder(OrderEntity orderEntity);
    public OrderEntity getOrder(String oderId);
}
