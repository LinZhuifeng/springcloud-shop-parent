package com.shop.pojo;

import com.shop.entity.OrderItem;
import lombok.Data;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.List;

@Data
@Accessors(chain = true)
@ToString
public class Cart implements Serializable{
    private String sellerId;//商家ID
    private String sellerName;//商家名称
    private List<OrderItem> orderItemList;//购物车明细

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;

        Cart cart = (Cart) o;

        return sellerId.equals(cart.sellerId);
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + sellerId.hashCode();
        return result;
    }
}
