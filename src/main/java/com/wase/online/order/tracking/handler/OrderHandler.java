package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.OrderEntity;

/**
 * Created by ariji on 1/13/2018.
 */
public interface OrderHandler {
    public OrderEntity placeOrder(OrderEntity orderEntity);
    public OrderEntity getOrder(String oderId);
    public OrderEntity upDateOrderStatus(String orderId);
}
