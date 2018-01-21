package com.wase6.Onlinetrackingofgoodsdeliverysystem.handler;

import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.OrderEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.model.UserOrderRelEntity;
import com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by arijit on 1/20/2018.
 */
@Service
public class UserOrderRelImpl implements UserOrderRelHandler {
    @Autowired
    OrderRepository userOrderRelRepository;
    @Override
    public UserOrderRelEntity getAllOrder(String uId) {
       // List<OrderEntity> orderEntities = userOrderRelRepository.findAllOrderByUser(uId);
        UserOrderRelEntity userOrderRelEntity = new UserOrderRelEntity();
        userOrderRelEntity.setOrderEntities(userOrderRelRepository.findAllOrderByUser(uId));
        userOrderRelEntity
                .getOrderEntities().stream().forEach(orderEntity -> orderEntity.setUser(null));

        return userOrderRelEntity;
    }
}
