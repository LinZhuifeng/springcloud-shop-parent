package com.shop.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Admin {
    private Long id;

    private String department;

    private String email;

    private String encodedpassword;

    private String name;

    private String username;
}