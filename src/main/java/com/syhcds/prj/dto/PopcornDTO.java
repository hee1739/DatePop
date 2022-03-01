package com.syhcds.prj.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("popcornDTO")
public class PopcornDTO {
	
		 private Long popcornIdx;
		 private Long userIdx;
		 private int popcornFlag;
		 private String popcornContents;
		 private Date enrollDate;
		 private int popcornPoint;
		 private Long popcornTotal;
		 
		public Long getPopcornIdx() {
			return popcornIdx;
		}
		public void setPopcornIdx(Long popcornIdx) {
			this.popcornIdx = popcornIdx;
		}
		public Long getUserIdx() {
			return userIdx;
		}
		public void setUserIdx(Long userIdx) {
			this.userIdx = userIdx;
		}
		public int getPopcornFlag() {
			return popcornFlag;
		}
		public void setPopcornFlag(int popcornFlag) {
			this.popcornFlag = popcornFlag;
		}
		public String getPopcornContents() {
			return popcornContents;
		}
		public void setPopcornContents(String popcornContents) {
			this.popcornContents = popcornContents;
		}
		public Date getEnrollDate() {
			return enrollDate;
		}
		public void setEnrollDate(Date enrollDate) {
			this.enrollDate = enrollDate;
		}
		public Long getPopcornTotal() {
			return popcornTotal;
		}
		public void setPopcornTotal(Long popcornTotal) {
			this.popcornTotal = popcornTotal;
		}
		
		
		public int getPopcornPoint() {
			return popcornPoint;
		}
		public void setPopcornPoint(int popcornPoint) {
			this.popcornPoint = popcornPoint;
		}
		@Override
		public String toString() {
			return "PopcornDTO [popcornIdx=" + popcornIdx + ", userIdx=" + userIdx + ", popcornFlag=" + popcornFlag
					+ ", popcornContents=" + popcornContents + ", enrollDate=" + enrollDate + ", popcornTotal="
					+ popcornTotal + "]";
		} 
		 
}
