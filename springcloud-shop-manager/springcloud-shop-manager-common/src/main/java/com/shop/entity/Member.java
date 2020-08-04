package com.shop.entity;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Member {
    private Long id;

    private String address;

    private BigDecimal amount;

    private String attributevalue0;

    private String attributevalue1;

    private String attributevalue2;

    private String attributevalue3;

    private String attributevalue4;

    private String attributevalue5;

    private String attributevalue6;

    private String attributevalue7;

    private String attributevalue8;

    private String attributevalue9;

    private BigDecimal balance;

    private Date birth;

    private String email;

    private String encodedpassword;

    private Integer gender;

    private String mobile;

    private String name;

    private String phone;

    private Long point;

    private Date safekeyexpire;

    private String safekeyvalue;

    private String username;

    private String zipcode;

    private Long areaId;

    private Long memberrankId;
}