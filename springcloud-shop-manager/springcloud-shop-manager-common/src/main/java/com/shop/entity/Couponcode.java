package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Couponcode {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String code;

    private Boolean isused;

    private Date useddate;

    private Long couponId;

    private Long memberId;
}