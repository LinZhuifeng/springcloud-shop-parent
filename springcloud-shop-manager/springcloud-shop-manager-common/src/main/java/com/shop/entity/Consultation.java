package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Consultation {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String content;

    private String ip;

    private Boolean isshow;

    private Long forconsultationId;

    private Long memberId;

    private Long productId;

    private Long storeId;
}