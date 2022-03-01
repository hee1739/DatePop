<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="Admin_title" /></title>
</head>
<body>
	<div id="wrap">
		<tiles:insertAttribute name="Admin_layout" />
		<tiles:insertAttribute name="Admin_body" />
	</div>
</body>
</html>