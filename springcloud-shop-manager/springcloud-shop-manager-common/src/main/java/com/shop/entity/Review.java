package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Review {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String content;

    private String ip;

    private Boolean isshow;

    private Integer score;

    private Long forreviewId;

    private Long memberId;

    private Long productId;

    private Long storeId;
}