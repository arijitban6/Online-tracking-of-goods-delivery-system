package com.wase.online.order.tracking.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

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

    @OneToOne(cascade = {CascadeType.ALL})
    private DeliveryAddressEntity DeliveryAddress;

    @OneToOne
    private UserEntity user;

    private String orderDate;

    @Enumerated(EnumType.ORDINAL)
    private OrderStatus orderStatus;


}
