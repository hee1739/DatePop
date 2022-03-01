package com.syhcds.prj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.syhcds.prj.dto.StoreDTO;
import com.syhcds.prj.dto.UserDTO;
import com.syhcds.prj.service.UserService;

@Controller("userControllerImpl")
public class UserControllerImpl implements UserController{
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserDTO userDTO;
	
	@RequestMapping (value="/user/index.do",method=RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}
	
	@RequestMapping (value="/user/browse.do",method=RequestMethod.GET)
	public ModelAndView browse(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping (value="/user/browseDetail.do",method=RequestMethod.GET)
	public ModelAndView browseDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping (value="/user/mailLogin.do",method=RequestMethod.GET)
	public ModelAndView mail_login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping (value="/user/mypage.do",method=RequestMethod.GET)
	public ModelAndView mypage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping (value="/user/mypageBuyList.do",method=RequestMethod.GET)
	public ModelAndView mypageBuyList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping (value="/user/mypageMyreview.do",method=RequestMethod.GET)
	public ModelAndView mypageMyreview(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	@RequestMapping (value="/user/mypagePopcorn.do",method=RequestMethod.GET)
	public ModelAndView mypagePopcorn(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	@RequestMapping (value="/user/popShop.do",method=RequestMethod.GET)
	public ModelAndView popShop(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		
		ModelAndView mav = new ModelAndView();
		
		List<StoreDTO> list = userService.listPopShop();
		
		mav.addObject("list",list);
		
		
		
		
		return mav;
	}
	@RequestMapping (value="/user/searchpassword.do",method=RequestMethod.GET)
	public ModelAndView searchpassword(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	
	@Override
	@RequestMapping (value="/user/list.do",method=RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		List<UserDTO> membersList = userService.listmembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		System.out.println(membersList);
		return mav;
	}
	
	
	@RequestMapping (value="/user/joinmember.do",method=RequestMethod.GET)
	public ModelAndView joinmember(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	
	@RequestMapping (value="/user/join.do", method=RequestMethod.POST)
	public ModelAndView join(UserDTO userDTO) throws Exception{
		userService.insertmembers(userDTO);
		ModelAndView mav = new ModelAndView("user/index");
		return mav;
	}
	
	@RequestMapping(value="/user/loginmain.do", method=RequestMethod.GET)
	public ModelAndView loginmain(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute UserDTO userdto, HttpSession session) throws Exception {
		boolean result = userService.logincheck(userdto, session);
		ModelAndView mav = new ModelAndView();
		if(result == true){
			mav.setViewName("user/index");
			mav.addObject("msg", "success");
		}else {
			mav.setViewName("user/mailLogin");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	@RequestMapping(value = "/user/logout.do", method=RequestMethod.POST)
	public ModelAndView logout(HttpSession sesion){
		userService.logout(sesion);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginmain");
		mav.addObject("msg", "logout");
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
