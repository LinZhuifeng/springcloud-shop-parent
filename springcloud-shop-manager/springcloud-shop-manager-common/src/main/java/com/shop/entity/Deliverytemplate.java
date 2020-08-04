package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Deliverytemplate {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String background;

    private String content;

    private Integer height;

    private Boolean isdefault;

    private String memo;

    private String name;

    private Integer offsetx;

    private Integer offsety;

    private Integer width;

    private Long storeId;
}