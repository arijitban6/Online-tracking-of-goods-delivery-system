package com.wase6.Onlinetrackingofgoodsdeliverysystem.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

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


    @Id @GeneratedValue(generator="system-uuid")
    @GenericGenerator(name="system-uuid", strategy = "uuid")
    private String orderId;


    @OneToOne
    private ItemEntity item;

    @OneToOne(cascade = {CascadeType.ALL})
    private DeliveryAddressEntity DeliveryAddress;

    @OneToOne
    private UserEntity user;

    private Date orderDate;
    @Enumerated(EnumType.ORDINAL)
    private OrderStatus orderStatus;


}
