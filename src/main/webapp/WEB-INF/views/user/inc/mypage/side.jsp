<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<div class="sidebar">
	<div class="side-element">
		<a href="#"> 관심지역 </a>
	</div>
	<div class="side-element">
		<a href="${contextPath}/user/mypageBuyList.do"> 구매목록</a>
	</div>
	<div class="side-element">
		<a href="${contextPath}//user/mypagePopcorn.do"> 팝콘</a>
	</div>
	<div class="side-element">
		<a href="${contextPath}//user/mypageMyreview.do"> 나의 리뷰</a>
	</div>
</div>