package com.syhcds.prj.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("orderDTO")
public class OrderDTO {

	private Long orderIdx;
	private Long storeIdx;
	private Long userIdx;
	private String totalPrice;
	private int orderState;
	private Date orderDate;
	
	public Long getOrderIdx() {
		return orderIdx;
	}
	public void setOrderIdx(Long orderIdx) {
		this.orderIdx = orderIdx;
	}
	public Long getStoreIdx() {
		return storeIdx;
	}
	public void setStoreIdx(Long storeIdx) {
		this.storeIdx = storeIdx;
	}
	public Long getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(Long userIdx) {
		this.userIdx = userIdx;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "OrderDTO [orderIdx=" + orderIdx + ", storeIdx=" + storeIdx + ", userIdx=" + userIdx + ", totalPrice="
				+ totalPrice + ", orderState=" + orderState + ", orderDate=" + orderDate + "]";
	}
}
