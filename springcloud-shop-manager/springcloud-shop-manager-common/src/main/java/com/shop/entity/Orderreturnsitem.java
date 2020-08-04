package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Orderreturnsitem {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String name;

    private Integer quantity;

    private String sn;

    private String specifications;

    private Long orderreturnsId;

    private Long skuId;
}