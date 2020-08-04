package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Area {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private String fullname;

    private Integer grade;

    private String name;

    private String treepath;

    private Long parentId;
}