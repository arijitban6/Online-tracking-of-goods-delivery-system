package com.wase6.Onlinetrackingofgoodsdeliverysystem.model;

/**
 * Created by ariji on 1/13/2018.
 */
public enum  OrderStatus {
    OrderPlaced("ORDERPLACED"),
    Shipped("SHIPPED"),
    OutForDelivery("OUTFORDELIVERY"),
    Delivered("DELIVERED");

    private String code;

    OrderStatus(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public static OrderStatus fromCode(String code) {
        for (OrderStatus status :OrderStatus.values()){
            if (status.getCode().equals(code)){
                return status;
            }
        }
        throw new UnsupportedOperationException(
                "The code " + code + " is not supported!");
    }
}
