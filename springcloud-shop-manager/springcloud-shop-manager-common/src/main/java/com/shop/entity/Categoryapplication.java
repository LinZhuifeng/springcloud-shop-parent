package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Categoryapplication {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private Double rate;

    private Integer status;

    private Long productcategoryId;

    private Long storeId;
}