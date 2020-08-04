package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Stocklog {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer inquantity;

    private String memo;

    private Integer outquantity;

    private Integer stock;

    private Integer type;

    private Long skuId;
}