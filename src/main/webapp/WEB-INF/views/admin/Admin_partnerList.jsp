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
		    <p>데이트팝 파트너 관리<span>파트너사 목록</span></p>
		</div>
		<!--content_title 끝-->
		<!--content_title_click 시작-->
		<div class="content_title_click" id="BL_clickbox">
		    <a onclick="BL_location_1()" id="BL_click_1">브랜드 목록</a>
		    <a onclick="BL_location_2()">브랜드 등록</a>
		</div>
		<!--content_title_click 끝-->
		<!--Brand_list 시작-->
		<div class="Brand_list">
		    <!--BL_c1 시작-->
		    <div class="BL_c1">
		        <!--form 시작-->
		        <form name="brand_search">
		            <p id="BL_c1_title" class="product_title"><label>브랜드 조회</label></p>
		            <!--table 시작-->
		            <table>
		                <thead>
		                <tr>
		                    <th>브랜드명</th>
		                    <td>
		                        <input type="text" name="text" placeholder="브랜드명 입력" id="name">
		                    </td>
		                </tr>
		                <tr>
		                    <th>입점상태</th>
		                    <td>
		                        <span><input type="checkbox" name="enter_state" value="전체" id="BL_check_1"><label
		                                for="BL_check_1">전체</label></span>
		                        <span><input type="checkbox" name="enter_state" value="입점대기" id="BL_check_2"><label
		                                for="BL_check_2">입점대기</label></span>
		                        <span><input type="checkbox" name="enter_state" value="입점중" id="BL_check_3"><label
		                                for="BL_check_3">입점중</label></span>
		                        <span><input type="checkbox" name="enter_state" value="입점중지" id="BL_check_4"><label
		                                for="BL_check_4">입점중지</label></span>
		                        <span><input type="checkbox" name="enter_state" value="입점종료" id="BL_check_5"><label
		                                for="BL_check_5">입점종료</label></span>
		                    </td>
		                </tr>
		                <tr>
		                    <th width="100">입점기간</th>
		                    <td>
		                        <input type="date" name="date" value="기간필터" id="date_start"> - <input type="date" name="date"
		                                                                                              value="기간필터"
		                                                                                              id="date_end">
		                        <span class="datebtn">
		                                <input type="button" name="button" value="최근 1주일" id="weekbtn">
		                                <input type="button" name="button" value="최근 1개월" id="monthbtn">
		                                <input type="button" name="button" value="최근 3개월" id="three_monthbtn">
		                            </span>
		                    </td>
		                </tr>
		                </thead>
		            </table>
		            <!--table 끝-->
		            <!--BL_c1_btnBox 시작-->
		            <div class="bottom_btn" id="BL_c1_btnBox">
		                <span><input type="reset" name="button" value="초기화"></span>
		                <span><input type="button" name="button" value="검색" id="search"></span>
		            </div>
		            <!--BL_c1_btnBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--BL_c1 끝-->
		    <!--BL_c2 시작-->
		    <div class="BL_c2">
		        <!--BL_c2_title 시작-->
		        <div id="BL_c2_title" class="green_title">
		            <p>브랜드 목록<span>(<span>총 브랜드수 : 2개</span>)</span></p>
		        </div>
		        <!--BL_c2_title 끝-->
		        <!--form 시작-->
		        <form name="brand_list">
		                <span>
		                    <input type="button" name="button" value="선택삭제" id="delbtn">
		                </span>
		            <!--table 시작-->
		            <table width="100%" class="list_table">
		                <thead class="thead">
		                <tr>
		                    <th width="5%"><input type="checkbox" value="cou_list" id="BL_check" name="selectall"
		                                          onclick="BL_selectAll(this)"><label for="BL_check"></label></th>
		                    <th width="35%">브랜드명</th>
		                    <th width="15%">등록상품수</th>
		                    <th width="30%">입점기간</th>
		                    <th width="15%">입점상태</th>
		                </tr>
		                </thead>
		            </table>
		            <!--table 끝-->
		            <!-- pageBox 시작-->
		            <div class="pageBox">
		                <ul>
		                    <li id="Maxprev"><<</li>
		                    <li id="prev"><</li>
		                    <li><a href="#">></a></li>
		                    <li id="Maxnext">>></li>
		                </ul>
		                <input type="hidden" class="page" value="0">
		                <input type="hidden" id="ajax_hidden">
		            </div>
		            <!-- pageBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--BL_c2 끝-->
		</div>
		<!--Brand_list 끝-->
    </section>
</body>
</html>