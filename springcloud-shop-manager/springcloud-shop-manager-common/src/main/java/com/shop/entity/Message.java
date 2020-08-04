package com.shop.entity;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Message {
    private Long id;

    private Date createddate;

    private Date lastmodifieddate;

    private Long version;

    private String content;

    private String ip;

    private Boolean isdraft;

    private Boolean receiverdelete;

    private Boolean receiverread;

    private Boolean senderdelete;

    private Boolean senderread;

    private String title;

    private Long formessageId;

    private Long receiverId;

    private Long senderId;
}