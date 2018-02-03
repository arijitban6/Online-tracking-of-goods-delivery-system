package com.wase.online.order.tracking.model;

import lombok.Data;

import java.util.List;

/**
 * Created by ariji on 1/20/2018.
 */
@Data
public class UserOrderRelEntity {
    List<OrderEntity> orderEntities;
}
