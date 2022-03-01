package com.syhcds.prj.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("storeDTO")
public class StoreDTO {
	
	private Long storeIdx; 
	private String storeName;
	private String storeGoods;
	private String storeContent;
	private String storePrice;
	private Long likeIdx;
	private Date enrollDate;
	private Long userIdx;
	private Long eventIdx;
	private String storeThumbnail;
	private String storeImg;
	private String storeCall;
	private String storeLoc;
	private Long cateIdx;
	private Long partnerIdx;
	private int storeSale;
	
	public String getStoreThumbnail() {
		return storeThumbnail;
	}
	public void setStoreThumbnail(String storeThumbnail) {
		this.storeThumbnail = storeThumbnail;
	}
	public String getStorePrice() {
		return storePrice;
	}
	public void setStorePrice(String storePrice) {
		this.storePrice = storePrice;
	}

	public Long getStoreIdx() {
		return storeIdx;
	}
	public void setStoreIdx(Long storeIdx) {
		this.storeIdx = storeIdx;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreGoods() {
		return storeGoods;
	}
	public void setStoreGoods(String storeGoods) {
		this.storeGoods = storeGoods;
	}
	public String getStoreContent() {
		return storeContent;
	}
	public void setStoreContent(String storeContent) {
		this.storeContent = storeContent;
	}
	public Long getLikeIdx() {
		return likeIdx;
	}
	public void setLikeIdx(Long likeIdx) {
		this.likeIdx = likeIdx;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public Long getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(Long userIdx) {
		this.userIdx = userIdx;
	}
	public Long getEventIdx() {
		return eventIdx;
	}
	public void setEventIdx(Long eventIdx) {
		this.eventIdx = eventIdx;
	}
	public String getStoreImg() {
		return storeImg;
	}
	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}
	public String getStoreCall() {
		return storeCall;
	}
	public void setStoreCall(String storeCall) {
		this.storeCall = storeCall;
	}
	public String getStoreLoc() {
		return storeLoc;
	}
	public void setStoreLoc(String storeLoc) {
		this.storeLoc = storeLoc;
	}
	public Long getCateIdx() {
		return cateIdx;
	}
	public void setCateIdx(Long cateIdx) {
		this.cateIdx = cateIdx;
	}
	public Long getPartnerIdx() {
		return partnerIdx;
	}
	public void setPartnerIdx(Long partnerIdx) { 
		this.partnerIdx = partnerIdx;
	}
	public int getStoreSale() {
		return storeSale;
	}
	public void setStoreSale(int storeSale) {
		this.storeSale = storeSale;
	}
	

}
