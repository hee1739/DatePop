package com.syhcds.prj.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("userDTO")
public class UserDTO {
	
	private Long userIdx; //user_id
	private String userLikeloc; //user_likeloc => userLikeloc
	private String userId;
	private String userPw;
	private String userRole;
	private String userAgree;
	private String userName;
	private String userCall;
	private Date enrollDate;
	private String gender;
	private String userNick;
	
	
	public Long getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(Long userIdx) {
		this.userIdx = userIdx;
	}
	public String getUserLikeloc() {
		return userLikeloc;
	}
	public void setUserLikeloc(String userLikeloc) {
		this.userLikeloc = userLikeloc;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getUserAgree() {
		return userAgree;
	}
	public void setUserAgree(String userAgree) {
		this.userAgree = userAgree;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserCall() {
		return userCall;
	}
	public void setUserCall(String userCall) {
		this.userCall = userCall;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	
	@Override
	public String toString() {
		return "UserDTO [userIdx=" + userIdx + ", userLikeloc=" + userLikeloc + ", userId=" + userId + ", userPw="
				+ userPw + ", userRole=" + userRole + ", userAgree=" + userAgree + ", userName=" + userName
				+ ", userCall=" + userCall + ", enrollDate=" + enrollDate + ", gender=" + gender + ", userNick="
				+ userNick + "]";
	}

}
