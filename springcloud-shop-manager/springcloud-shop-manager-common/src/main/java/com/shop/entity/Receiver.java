package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Receiver {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String address;

    private String areaname;

    private String consignee;

    private Boolean isdefault;

    private String phone;

    private String zipcode;

    private Long areaId;

    private Long memberId;
}