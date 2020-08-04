package com.shop.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Idgenerator {
    private String sequenceName;

    private Long nextVal;
}