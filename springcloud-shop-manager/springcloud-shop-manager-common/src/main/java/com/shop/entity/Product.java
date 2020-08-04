package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Product {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String attributevalue0;

    private String attributevalue1;

    private String attributevalue10;

    private String attributevalue11;

    private String attributevalue12;

    private String attributevalue13;

    private String attributevalue14;

    private String attributevalue15;

    private String attributevalue16;

    private String attributevalue17;

    private String attributevalue18;

    private String attributevalue19;

    private String attributevalue2;

    private String attributevalue3;

    private String attributevalue4;

    private String attributevalue5;

    private String attributevalue6;

    private String attributevalue7;

    private String attributevalue8;

    private String attributevalue9;

    private String caption;

    private BigDecimal cost;

    private Long hits;

    private String image;

    private String introduction;

    private Boolean isactive;

    private Boolean isdelivery;

    private Boolean islist;

    private Boolean ismarketable;

    private Boolean istop;

    private String keyword;

    private BigDecimal marketprice;

    private String memo;

    private Long monthhits;

    private Date monthhitsdate;

    private Long monthsales;

    private Date monthsalesdate;

    private String name;

    private String parametervalues;

    private BigDecimal price;

    private String productimages;

    private Long sales;

    private Double score;

    private Long scorecount;

    private String sn;

    private String specificationitems;

    private Long totalscore;

    private Integer type;

    private String unit;

    private Long weekhits;

    private Date weekhitsdate;

    private Long weeksales;

    private Date weeksalesdate;

    private Integer weight;

    private Long brandId;

    private Long productcategoryId;

    private Long storeId;

    private Long storeproductcategoryId;
}