package com.wase6.Onlinetrackingofgoodsdeliverysystem.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by ariji on 1/13/2018.
 */
@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "ORDERENTITY ")
public class OrderEntity {

    @Id
    private String orderId;
    @OneToOne
    private ItemEntity item;


    private Date orderDate;
    @Enumerated(EnumType.ORDINAL)
    private OrderStatus orderStatus;


}
