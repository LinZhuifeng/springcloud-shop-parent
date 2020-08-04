package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Orderreturns {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String address;

    private String area;

    private String deliverycorp;

    private BigDecimal freight;

    private String memo;

    private String phone;

    private String shipper;

    private String shippingmethod;

    private String sn;

    private String trackingno;

    private String zipcode;

    private Long orders;
}