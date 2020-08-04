package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Paymenttransaction {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private BigDecimal amount;

    private Date expire;

    private BigDecimal fee;

    private Boolean issuccess;

    private String paymentpluginid;

    private String paymentpluginname;

    private String sn;

    private Integer type;

    private Long orders;

    private Long parentId;

    private Long storeId;

    private Long svcId;

    private Long userId;
}