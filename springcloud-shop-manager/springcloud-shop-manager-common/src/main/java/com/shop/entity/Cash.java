package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Cash {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String account;

    private BigDecimal amount;

    private String bank;

    private Integer status;

    private Long businessId;
}