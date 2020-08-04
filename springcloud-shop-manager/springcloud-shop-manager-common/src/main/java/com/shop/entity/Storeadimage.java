package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Storeadimage {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private String image;

    private String title;

    private String url;

    private Long storeId;
}