package com.syhcds.prj.dto;

import org.springframework.stereotype.Component;

@Component("cateDTO")
public class CateDTO {

	private int cate_idx;
	private String cate_name;
	private int cate_parent;
	
	public CateDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public CateDTO(int cate_idx, String cate_name, int cate_parent) {
		super();
		this.cate_idx = cate_idx;
		this.cate_name = cate_name;
		this.cate_parent = cate_parent;
	}

	public int getCate_idx() {
		return cate_idx;
	}
	public void setCate_idx(int cate_idx) {
		this.cate_idx = cate_idx;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public int getCate_parent() {
		return cate_parent;
	}
	public void setCate_parent(int cate_parent) {
		this.cate_parent = cate_parent;
	}
	
	
}
