<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath}" />
  <body>
    <!--wrap 시작-->
    <wrap>	
      <!--header 시작-->
      <header id="header">
        <div class="header_area">
          <a href="#" class="logo">DatePoP<span>관리자 센터</span></a>
        </div>
        <div class="info">
          <ul>
            <li><a href="#">admin 님</a></li>
            <li><a href="#">내정보</a></li>
            <li><a href="#">로그아웃</a></li>
          </ul>
        </div>
      </header>
      <!--header 끝-->
      <!--side 카테고리 시작-->
      <div class="category">
        <div class="profile">
          <div>
            <img src="/img/profile.png" class="profile_img" />
            <p>Admin님</p>
          </div>
        </div>
        <!--list 시작-->
        <div class="list">
          <div class="list_detail">
            <div class="sub_title" id="sub_title_1">
              <a href="#">전체 상품 관리 </a>
            </div>
            <ul id="sub_menu_1" class="sub_menu">
              <li><a href="#" id="sub_menu_1_2">상품 등록</a></li>
              <li><a href="#" id="sub_menu_1_4">주문 관리</a></li>
              <li><a href="#" id="sub_menu_1_5">상품 후기</a></li>
              <li><a href="#" id="sub_menu_1_5">상품 목록</a></li>
              <li><a href="#" id="sub_menu_1_5">카테고리 관리</a></li>
            </ul>
          </div>
          <div class="list_detail">
            <div class="sub_title" id="sub_title_2">
              <a href="#">회원관리 </a>
            </div>
            <ul id="sub_menu_2" class="sub_menu">
              <li><a href="#" id="sub_menu_2_1">공지사항</a></li>
              <li><a href="#" id="sub_menu_2_3">회원 관리</a></li>
              <li><a href="#" id="sub_menu_1_4">주문 관리</a></li>
            </ul>
          </div>
          <div class="list_detail">
            <div class="sub_title" id="sub_title_3">
              <a href="#">파트너사 관리 </a>
            </div>
            <ul id="sub_menu_3" class="sub_menu">
              <li><a href="#" id="sub_menu_2_1">파트너사 등록</a></li>
              <li><a href="#" id="sub_menu_2_3">파트너사 목록</a></li>
            </ul>
          </div>
           <div class="list_detail">
            <div class="sub_title" id="sub_title_3">
              <a href="#">이벤트 관리 </a>
            </div>
            <ul id="sub_menu_3" class="sub_menu">
              <li><a href="#" id="sub_menu_2_1">이벤트 등록</a></li>
              <li><a href="#" id="sub_menu_2_3">이벤트 목록</a></li>
            </ul>
          </div>
        </div>
        <!--list 끝-->
      </div>
      <!--side 카테고리 끝-->
    </wrap>
    <!--wrap 끝-->
  </body>