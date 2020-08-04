package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Storefavorite {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Long memberId;

    private Long storeId;
}