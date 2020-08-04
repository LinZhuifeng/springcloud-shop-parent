package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Articlecategory {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private Integer grade;

    private String name;

    private String seodescription;

    private String seokeywords;

    private String seotitle;

    private String treepath;

    private Long parentId;
}