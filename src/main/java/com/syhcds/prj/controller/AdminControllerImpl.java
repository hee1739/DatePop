package com.syhcds.prj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("adminControllerImpl")
public class AdminControllerImpl implements AdminController{

	
	@RequestMapping (value="/admin/Admin_OrderList.do",method=RequestMethod.GET)
	public ModelAndView OrderList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping (value="/admin/Admin_OrderDetail.do",method=RequestMethod.GET)
	public ModelAndView OrderDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
//	@RequestMapping (value="/admin/Admin_productList.do",method=RequestMethod.GET)
//	public ModelAndView productList(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		return mav;
//	}
//	
	@RequestMapping (value="/admin/Admin_notice.do",method=RequestMethod.GET)
	public ModelAndView notcie(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping (value="/admin/Admin_noticeRegist.do",method=RequestMethod.GET)
	public ModelAndView noticeRegist(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping (value="/admin/Admin_UserList.do",method=RequestMethod.GET)
	public ModelAndView userList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping (value="/admin/Admin_reviewList.do",method=RequestMethod.GET)
	public ModelAndView reviewList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping (value="/admin/Admin_UserEdit.do",method=RequestMethod.GET)
	public ModelAndView userEdit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping (value="/admin/Admin_cate.do",method=RequestMethod.GET)
	public ModelAndView cate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	
	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		
		// http://localhost:8080/ezen06_SpringAnnotation/anno/login5.do
		int begin = 0;
		if(!((contextPath==null) ||("".equals(contextPath)))) {
			begin = contextPath.length();
		}
		
		int end;
		
		String uri =  (String)request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}
		
		if (uri.indexOf(";") != -1 ) {
			end = uri.indexOf(";");
		}
		else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		}
		else {
			end = uri.length();
		}
		
		String fileName = uri.substring(begin, end);
		if (fileName.indexOf(".") != -1) {
			fileName = fileName.substring(0, fileName.lastIndexOf("."));
		}
		
		if (fileName.lastIndexOf("/") != -1) {
			fileName = fileName.substring(fileName.lastIndexOf("/",1)+1, fileName.length());
		}
		
		return fileName;
	}
}
