package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Pointlog {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Long balance;

    private Long credit;

    private Long debit;

    private String memo;

    private Integer type;

    private Long memberId;
}