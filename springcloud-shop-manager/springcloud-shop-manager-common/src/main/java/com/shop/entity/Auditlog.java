package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Auditlog {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String action;

    private String detail;

    private String ip;

    private String parameters;

    private String requesturl;

    private Long userId;
}