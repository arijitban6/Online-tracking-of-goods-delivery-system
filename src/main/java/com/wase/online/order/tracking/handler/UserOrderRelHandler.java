package com.wase.online.order.tracking.handler;

import com.wase.online.order.tracking.model.UserOrderRelEntity;

/**
 * Created by ariji on 1/20/2018.
 */
public interface UserOrderRelHandler {
    public UserOrderRelEntity getAllOrder(String uId);
}
