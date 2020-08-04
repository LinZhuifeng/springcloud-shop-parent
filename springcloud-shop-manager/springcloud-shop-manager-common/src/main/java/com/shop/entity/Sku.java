package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Sku {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer allocatedstock;

    private BigDecimal cost;

    private Long exchangepoint;

    private Boolean isdefault;

    private BigDecimal marketprice;

    private BigDecimal price;

    private Long rewardpoint;

    private String sn;

    private String specificationvalues;

    private Integer stock;

    private Long productId;
}