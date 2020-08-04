package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Statistic {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer day;

    private Integer month;

    private Integer type;

    private BigDecimal value;

    private Integer year;

    private Long storeId;
}