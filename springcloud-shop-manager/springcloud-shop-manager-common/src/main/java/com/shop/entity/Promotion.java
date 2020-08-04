package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Promotion {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private Date begindate;

    private BigDecimal conditionsamount;

    private Integer conditionsnumber;

    private BigDecimal creditamount;

    private Integer creditnumber;

    private Double discount;

    private Date enddate;

    private String image;

    private String introduction;

    private Boolean iscouponallowed;

    private Boolean isenabled;

    private Boolean isfreeshipping;

    private BigDecimal maximumprice;

    private Integer maximumquantity;

    private BigDecimal minimumprice;

    private Integer minimumquantity;

    private String name;

    private String priceexpression;

    private String title;

    private Integer type;

    private Long storeId;
}