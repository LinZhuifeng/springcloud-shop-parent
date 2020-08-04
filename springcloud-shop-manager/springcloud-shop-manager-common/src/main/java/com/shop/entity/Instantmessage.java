package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Instantmessage {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private String account;

    private String name;

    private Integer type;

    private Long storeId;
}