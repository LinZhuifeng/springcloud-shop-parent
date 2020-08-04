package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Coupon {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Date begindate;

    private Date enddate;

    private String introduction;

    private Boolean isenabled;

    private Boolean isexchange;

    private BigDecimal maximumprice;

    private Integer maximumquantity;

    private BigDecimal minimumprice;

    private Integer minimumquantity;

    private String name;

    private Long point;

    private String prefix;

    private String priceexpression;

    private Long storeId;
}