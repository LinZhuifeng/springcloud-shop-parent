package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Ordershipping {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String address;

    private String area;

    private String consignee;

    private String deliverycorp;

    private String deliverycorpcode;

    private String deliverycorpurl;

    private BigDecimal freight;

    private String memo;

    private String phone;

    private String shippingmethod;

    private String sn;

    private String trackingno;

    private String zipcode;

    private Long orders;
}