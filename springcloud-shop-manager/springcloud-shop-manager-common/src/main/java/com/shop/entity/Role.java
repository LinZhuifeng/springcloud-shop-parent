package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Role {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String description;

    private Boolean issystem;

    private String name;

    private String permissions;
}