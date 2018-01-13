package com.wase6.Onlinetrackingofgoodsdeliverysystem.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by ariji on 1/13/2018.
 */
@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "ITEMENTITY ")
public class ItemEntity {

    @Id
    private String id;

    private Long price;

    private String name;

    private String description;
}
