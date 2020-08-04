package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Ordershippingitem {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Boolean isdelivery;

    private String name;

    private Integer quantity;

    private String sn;

    private String specifications;

    private Long ordershippingId;

    private Long skuId;
}