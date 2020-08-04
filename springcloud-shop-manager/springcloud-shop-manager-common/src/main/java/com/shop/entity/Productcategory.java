package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Productcategory {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private Double generalrate;

    private Integer grade;

    private String name;

    private Double selfrate;

    private String seodescription;

    private String seokeywords;

    private String seotitle;

    private String treepath;

    private Long parentId;
}