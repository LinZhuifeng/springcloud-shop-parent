package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Orders {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String address;

    private BigDecimal amount;

    private BigDecimal amountpaid;

    private String areaname;

    private Date completedate;

    private String consignee;

    private BigDecimal coupondiscount;

    private Long exchangepoint;

    private Date expire;

    private BigDecimal fee;

    private BigDecimal freight;

    private String invoicecontent;

    private String invoicetitle;

    private Boolean isallocatedstock;

    private Boolean isexchangepoint;

    private Boolean isusecouponcode;

    private String memo;

    private BigDecimal offsetamount;

    private String paymentmethodname;

    private Integer paymentmethodtype;

    private String phone;

    private BigDecimal price;

    private BigDecimal promotiondiscount;

    private String promotionnames;

    private Integer quantity;

    private BigDecimal refundamount;

    private Integer returnedquantity;

    private Long rewardpoint;

    private Integer shippedquantity;

    private String shippingmethodname;

    private String sn;

    private Integer status;

    private BigDecimal tax;

    private Integer type;

    private Integer weight;

    private String zipcode;

    private Long areaId;

    private Long couponcodeId;

    private Long memberId;

    private Long paymentmethodId;

    private Long shippingmethodId;

    private Long storeId;
}