package com.shop.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Data
@Accessors(chain = true)
@ToString
public class Member implements Serializable {

    private Long id;

    private String address;

    private String amount;

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

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
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