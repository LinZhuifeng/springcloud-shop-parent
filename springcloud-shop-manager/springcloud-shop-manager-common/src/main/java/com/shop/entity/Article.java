package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Article {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String author;

    private String content;

    private Long hits;

    private Boolean ispublication;

    private Boolean istop;

    private String seodescription;

    private String seokeywords;

    private String seotitle;

    private String title;

    private Long articlecategoryId;

    private Integer type;
}