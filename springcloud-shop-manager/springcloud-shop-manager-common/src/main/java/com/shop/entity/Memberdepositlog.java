package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Memberdepositlog {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private BigDecimal balance;

    private BigDecimal credit;

    private BigDecimal debit;

    private String memo;

    private Integer type;

    private Long memberId;
}