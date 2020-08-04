package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Businessattribute {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Integer orders;

    private Boolean isenabled;

    private Boolean isrequired;

    private String name;

    private String options;

    private String pattern;

    private Integer propertyindex;

    private Integer type;
}