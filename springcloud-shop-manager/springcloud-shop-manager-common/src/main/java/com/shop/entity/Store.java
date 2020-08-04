package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Store {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String address;

    private BigDecimal bailpaid;

    private Date discountpromotionenddate;

    private String email;

    private Date enddate;

    private Date fullreductionpromotionenddate;

    private String introduction;

    private Boolean isenabled;

    private String keyword;

    private String logo;

    private String mobile;

    private String name;

    private String phone;

    private Integer status;

    private Integer type;

    private String zipcode;

    private Long businessId;

    private Long storecategoryId;

    private Long storerankId;
}