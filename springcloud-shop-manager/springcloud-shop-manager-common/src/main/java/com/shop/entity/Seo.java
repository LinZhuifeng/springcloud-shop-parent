package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Seo {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String description;

    private String keywords;

    private String title;

    private Integer type;
}