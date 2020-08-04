package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Defaultfreightconfig {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private BigDecimal continueprice;

    private Integer continueweight;

    private BigDecimal firstprice;

    private Integer firstweight;

    private Long shippingmethodId;

    private Long storeId;
}