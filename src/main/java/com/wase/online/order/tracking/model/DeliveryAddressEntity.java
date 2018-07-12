package com.wase.online.order.tracking.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by arijit on 1/26/2018.
 */


@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
//@Table(name = "DELIVERYADDRESSENTITY ")
public class DeliveryAddressEntity {
    @Id
    @GeneratedValue(generator="system-uuid")
    @GenericGenerator(name="system-uuid", strategy = "uuid")
    @Column(name = "delivery_address_entity_id")
    String DeliveryAddressEntityId;
    String Name;
    String PhoneNumber;
    String PinCode;
    String Location;
    String Address;
    String City;
    String State;
    String Landmark;
}
