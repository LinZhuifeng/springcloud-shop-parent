package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Paymentmethod {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private String content;

    private String description;

    private String icon;

    private Integer method;

    private String name;

    private Integer timeout;

    private Integer type;
}