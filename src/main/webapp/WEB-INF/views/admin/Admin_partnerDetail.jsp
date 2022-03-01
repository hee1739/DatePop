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
	        <p>데이트팝 파트너 관리<span>파트너사 상세</span></p>
	    </div>
	    <!--content_title 끝-->
	    <!--Bedit 시작-->
	    <div class="Bedit">
	        <!--form 시작-->
	        <form name="brand_edit" enctype="multipart/form-data">
	            <p class="product_title" id="BE_c1_title"><label>브랜드 수정</label></p>
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
	                            <img src="" class="file_input_button_k" id="BCE_img">
	                            <input type="file" class="file_input_hidden_k" id="BCE_input" name="file">
	                        </div>
	                    </td>
	                </tr>
	                <tr>
	                    <th>입점 상태</th>
	                    <td>
	                        <span><input type="radio" name="state" value="1">입점대기</span>
	                        <span><input type="radio" name="state" value="2">입점중</span>
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
	                                <input type="file" class="file_input_hidden_b" id="BCE_bannerinput" name="file">
	                            </div>
	                            <input type="submit" value="등록" style="border-radius: 5px;">
	                        </div>
	                        <div class="banner_content">
	                            <img src="" id="BCE_banner">
	                        </div>
	                        <div class="banner_notice">권장크기 : 1000 x 1000 (윈도대상 750 x 1000)<br>쇼핑검색에 노출되지 않는 경우 <u>가이드를 확인해주세요.</u></div>
	                    </td>
	                </tr>
	            </table>
	            <!--table 끝-->
	            <!--BE_c1_btnBox 시작-->
	            <div id="BE_c1_btnBox" class="bottom_btn">
	                <span><input type="button" name="submit" value="수정" onclick="edit()"></span>
	            </div>
	            <!--BE_c1_btnBox 끝-->
	        </form>
	        <!--form 끝-->
	    </div>
	    <!--Bedit 끝-->
	    <!--BL_c3 시작-->
	    <div class="BL_c3">
	        <!--form 시작-->
	        <form name="product_search">
	            <p id="BL_c3_title" class="product_title"><label>등록 상품 조회</label></p>
	            <!--table 시작-->
	            <table>
	                <tr>
	                    <th width="100">상품 검색</th>
	                    <td>
	                        <select style="width: 90px; padding-left: 10px;" id="state">
	                            <option value="">전체</option>
	                            <option value="0">판매대기</option>
	                            <option value="1">판매중</option>
	                            <option value="2">판매중지</option>
	                            <option value="3">판매종료</option>
	                            <option value="4">품절</option>
	                        </select>
	                        <input type="text" name="text" placeholder="상품명을 입력하세요" id="proName">
	                    </td>
	                    <td><input type="button" name="button" value="검색" onclick="search()"></td>
	                </tr>
	            </table>
	            <!--table 끝-->
	        </form>
	        <!--form 끝-->
	    </div>
	    <!--BL_c3 끝-->
	    <!--BL_c4 시작-->
	    <div class="BL_c4">
	        <!--BL_c4_title 시작-->
	        <div id="BL_c4_title" class="green_title">
	            <p>등록 상품 목록 <span>(<span>현재 등록 상품 : 2개</span>)</span></p>
	        </div>
	        <!--BL_c4_title 끝-->
	        <!--form 시작-->
	        <form name="product_list">
	                <span>
	                    <input type="button" name="button" value="선택삭제">
	                </span>
	            <!--table 시작-->
	            <table width="100%" class="list_table">
	                <thead class="thead">
	                    <tr>
	                        <th width="5%"><input type="checkbox" value="cou_list" id="BL_check_8" name="selectall" onclick="BE_selectAll2(this)"><label for="BL_check_8"></label></th>
	                        <th width="15%">상품번호</th>
	                        <th width="20%">상품명</th>
	                        <th width="25%">상세설명</th>
	                        <th width="20%">상품등록날짜</th>
	                        <th width="15%">판매상태</th>
	                    </tr>
	                </thead>
	            </table>
	            <!--table 끝-->
	            <!-- pageBox 시작-->
	            <div class="pageBox">
	                <ul>
	                    <li id="Maxprev"><a href="#"><<</a></li>
	                    <li id="prev"><a href="#"><</a></li>
	                    <li><a href="#">></a></li>
	                    <li id="Maxnext"><a href="#">>></a></li>
	                </ul>
	                <input type="hidden" value="0" class="page">
	            </div>
	            <!-- pageBox 끝-->
	        </form>
	        <!--form 끝-->
	    </div>
	    <!--BL_c4 끝-->
    </section>
</body>
</html>