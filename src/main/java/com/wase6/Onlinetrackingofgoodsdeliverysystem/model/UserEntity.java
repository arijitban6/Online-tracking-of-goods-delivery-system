package com.wase6.Onlinetrackingofgoodsdeliverysystem.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by ariji on 1/13/2018.
 */
@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "USER ")
public class UserEntity implements Serializable {

    @Id
    private String email;

    private String firstName;

    private String lastName;

    private String phoneNumber;

    private String password;

}
