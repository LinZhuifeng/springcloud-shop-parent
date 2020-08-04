package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Cart {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Date expire;

    private String cartkey;

    private Long memberId;
}