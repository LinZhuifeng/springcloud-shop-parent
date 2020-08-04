package com.shop.entity;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
@ToString
public class Ad {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private Date begindate;

    private String content;

    private Date enddate;

    private String path;

    private String title;

    private Integer type;

    private String url;

    private Long adpositionId;

    private String author;

    private Long hits;
}