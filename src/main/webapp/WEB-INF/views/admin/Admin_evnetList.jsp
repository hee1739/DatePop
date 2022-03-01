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
	        <p>헬로네이처 추천 관리<span>기획전/이벤트</span></p>
	    </div>
	    <!--content_title 끝-->
	    <!--content_title_click 시작-->
	    <div class="content_title_click">
	        <a onclick="EL_location_1()" id="EL_click_1">기획전/이벤트 목록</a>
	        <a onclick="EL_location_2()">기획전/이벤트 등록</a>
	    </div>
	    <!--content_title_click 끝-->
	    <!--Event_list 시작-->
	    <div class="Event_list">
	        <!--EL_c1 시작-->
	        <div class="EL_c1">
	            <!--form 시작-->
	            <form name="event_search">
	                <p id="EL_c1_title" class="product_title"><label>기획전/이벤트 조회</label></p>
	                <!--table 시작-->
	                <table>
	                    <tr>
	                        <th width="80">진행기간</th>
	                        <td><input type="date" name="date" id="date_start"> - <input type="date" name="date" id="date_end"></td>
	                    </tr>
	                    <tr>
	                        <th>분류</th>
	                        <td>
	                            <select style="height: 38px;" id="typeFlag">
	                                <option>분류</option>
	                                <option value="0">기획전</option>
	                                <option value="1">이벤트</option>
	                            </select>
	                            <input type="text" name="text" placeholder="기획전/이벤트명을 검색하세요" id="title">
	                        </td>
	                    </tr>
	                </table>
	                <!--table 끝-->
	                <div class="bottom_btn">
	                    <span><input type="reset" name="reset" value="초기화"></span>
	                    <span><input type="button" name="submit" value="검색" id="schbtn"></span>
	                </div>
	            </form>
	            <!--form 끝-->
	        </div>
	        <!--EL_c1 끝-->
	        <!--EL_c2 시작-->
	        <div class="EL_c2">
	            <!--EL_c2_title 시작-->
	            <div id="EL_c2_title" class="green_title">
	                <p>등록 상품 목록 <span>(<span>현재 등록 상품 : 2개</span>)</span></p>
	            </div>
	            <!--EL_c2_title 끝-->
	            <!--form 시작-->
	            <form name="event_list">
	                <span>
	                    <input type="button" name="button" value="선택삭제" id="delbtn">
	                </span>
	                <!--table 시작-->
	                <table width="100%" class="list_table">
	                    <thead class="thead">
	                    <tr>
	                        <th width="5%"><input type="checkbox" value="ELCheck" id="EL_check" name="selectall" onclick="EL_selectAll(this)"><label for="EL_check"></label></th>
	                        <th width="10%">번호</th>
	                        <th width="15%">분류</th>
	                        <th width="25%">기획전/이벤트명</th>
	                        <th width="20%">진행기간</th>
	                        <th width="15%">진행상태</th>
	                        <th width="10%">상세</th>
	                    </tr>
	                    </thead>
	                </table>
	                <!--table 끝-->
	                <div class="pageBox">
	                    <ul>
	                        <li id="Maxprev"><a href="#"><<</a></li>
	                        <li id="prev"><</li>
	                        <li>></li>
	                        <li id="Maxnext"><a href="#">>></a></li>
	                    </ul>
	                    <input type="hidden" value="0" class="page">
	                    <input type="hidden" value="0" class="page_hidden">
	                    <input type="hidden" id="ajax_hidden">
	                </div>
	            </form>
	            <!--form 끝-->
	        </div>
	        <!--EL_c1 끝-->
	    </div>
	    <!--Event_list 끝-->
    </section>
</body>
</html>