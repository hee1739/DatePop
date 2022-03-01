<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/DatePopPrj/resources/admin/css/script.css">
    <title>Document</title>
</head>
<body>
    <section>
		<!--content_title 시작-->
		<div class="content_title">
		    <p>데이트팝 파트너 관리<span>파트너사 등록</span></p>
		</div>
		<!--content_title 끝-->
		<!--Bcreate 시작-->
		<div class="Bcreate">
		    <!--form 시작-->
		    <form name="brand_create" enctype="multipart/form-data">
		        <p class="product_title" id="BC_c1_title"><label>브랜드 등록</label></p>
		        <!--table 시작-->
		        <table class="brand">
		            <tr>
		                <th>브랜드명</th>
		                <td><input type="text" name="text" placeholder="20자 이내로 입력하세요" maxlength="20" id="name"></td>
		            </tr>
		            <tr>
		                <th>브랜드 설명</th>
		                <td><input type="text" name="text" placeholder="100자 이내로 입력하세요" maxlength="100" id="des"></td>
		            </tr>
		            <tr>
		                <th>입점 기간</th>
		                <td>
		                    <input type="date" id="date_start" name="date"> - <input type="date" name="date" id="date_end">
		                </td>
		            </tr>
		            <tr>
		                <th>브랜드 로고</th>
		                <td>
		                    <div class="file_input_div_k">
		                        <img src="" class="file_input_button_k" id="BCT_img">
		                        <input type="file" class="file_input_hidden_k" id="BCT_input" name="file">
		                    </div>
		                </td>
		            </tr>
		            <tr>
		                <th>입점 상태</th>
		                <td>
		                    <span><input type="radio" name="state" value="1">입점대기</span>
		                    <span><input type="radio" name="state" value="2" checked>입점중</span>
		                    <span><input type="radio" name="state" value="3">입점중지</span>
		                    <span><input type="radio" name="state" value="4">입점종료</span>
		                </td>
		            </tr>
		            <tr>
		                <th>브랜드 배너</th>
		                <td>
		                    <div class="banner_button">
		                        <div class="file_input_div_b">
		                            <input type="button" value="파일 등록" class="file_input_button_b">
		                            <input type="file" class="file_input_hidden_b" id="BCT_bannerinput" name="file">
		                        </div>
		                        <input type="submit" value="등록" style="border-radius: 5px;">
		                    </div>
		                    <div class="banner_content">
		                        <img src="" id="BCT_banner">
		                    </div>
		                    <div class="banner_notice">권장크기 : 1000 x 1000 (윈도대상 750 x 1000)<br>쇼핑검색에 노출되지 않는 경우 <u>가이드를 확인해주세요.</u></div>
		                </td>
		            </tr>
		        </table>
		        <!--table 끝-->
		        <!--BC_c1_btnBox 시작-->
		        <div id="BC_c1_btnBox" class="bottom_btn">
		            <span><input type="reset" name="reset" value="초기화"></span>
		            <span><input type="button" name="submit" value="등록" onclick="sendit()"></span>
		        </div>
		        <!--BC_c1_btnBox 끝-->
		    </form>
		    <!--form 끝-->
		</div>
		<!--Bcreate 끝-->
    </section>
</body>
</html>