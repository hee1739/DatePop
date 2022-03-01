<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<nav class="nav">
    <ul class="nav-ul">
        <li><a href="${contextPath}/user/index.do">HOME</a></li>
        <li><a href="${contextPath}/user/popShop.do">POPSHOP</a></li>
        <li><a href="${contextPath}/user/browse.do">BROWSE</a></li>
        <li><a href="${contextPath}/user/mypage.do">MYPAGE</a></li>
    </ul>
</nav>