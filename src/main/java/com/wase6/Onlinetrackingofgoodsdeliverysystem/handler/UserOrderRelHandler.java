package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserOrderRelEntity;

import java.util.List;

/**
 * Created by ariji on 1/20/2018.
 */
public interface UserOrderRelHandler {
    public UserOrderRelEntity getAllOrder(String uId);
}
