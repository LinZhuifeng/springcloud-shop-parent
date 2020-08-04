package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Orderitem {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private BigDecimal commissiontotals;

    private Boolean isdelivery;

    private String name;

    private BigDecimal price;

    private Integer quantity;

    private Integer returnedquantity;

    private Integer shippedquantity;

    private String sn;

    private String specifications;

    private String thumbnail;

    private Integer type;

    private Integer weight;

    private Long orders;

    private Long skuId;
}