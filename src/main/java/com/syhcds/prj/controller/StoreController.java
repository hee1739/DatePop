package com.syhcds.prj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.syhcds.prj.dto.StoreDTO;

public interface StoreController {
	public ResponseEntity listStores(MultipartHttpServletRequest mhsq,
			@ModelAttribute("storeDTO") StoreDTO storeDTO,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView regProdForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView storeList(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
