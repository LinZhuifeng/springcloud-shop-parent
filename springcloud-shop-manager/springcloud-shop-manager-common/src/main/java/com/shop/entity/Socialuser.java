package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Socialuser {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String loginpluginid;

    private String uniqueid;

    private Long userId;
}