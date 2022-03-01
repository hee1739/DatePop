<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="/DatePopPrj/resources/admin/css/prodCss.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="/DatePopPrj/resources/admin/js/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="/DatePopPrj/resources/admin/css/script.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<section>
<!--content_title 시작-->
<div class="content_title">
    <p>전체 상품 관리<span>상품 관리</span></p>
</div>
<!--content_title 끝-->
<div class="content_title_click">
    <a onclick="PL_location()">상품 등록</a>
    <a onclick="PL_location_1()" id="product_click_2">상품 목록</a>
    <!--    <a onclick="PL_location_2()">공통문구 </a>-->
</div>
<!--Prod_list 시작-->
<div class="Prod_list">
    <!--PL_c1 시작-->
    <div class="PL_c1">
        <!--form 시작-->
        <form name="prod_search">
            <p id="PL_c1_title" class="product_title"><label>상품 조회</label></p>
            <!--table 시작-->
            <table>
                <tr>
                    <th width="120">판매상태</th>
                    <td>
                        <span><input type="checkbox" name="d_status" value="" checked id="PL_check_1"><label
                                for="PL_check_1">전체</label></span>
                        <span><input type="checkbox" name="d_status" value="0" id="PL_check_2"><label
                                for="PL_check_2">판매대기</label></span>
                        <span><input type="checkbox" name="d_status" value="1" id="PL_check_3"><label
                                for="PL_check_3">판매중</label></span>
                        <span><input type="checkbox" name="d_status" value="2" id="PL_check_4"><label
                                for="PL_check_4">판매중지</label></span>
                        <span><input type="checkbox" name="d_status" value="3" id="PL_check_5"><label
                                for="PL_check_5">판매종료</label></span>
                        <span><input type="checkbox" name="d_status" value="4" id="PL_check_6"><label for="PL_check_6">품절</label></span>
                    </td>
                </tr>
                <tr>
                    <th>카테고리</th>
                    <td>
                        <select onchange="categoryChange(this)" id="PL_sel_1">
                            <option value="대분류">대분류</option>
                        </select>
                        <select id="PL_sel_2">
                            <option value="중분류">중분류</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>상품명</th>
                    <td>
                        <input type="text" name="text" placeholder="상품명을 입력하세요" id="text">
                    </td>
                </tr>
            </table>
            <!--table 끝-->
            <!--PL_c1_btnBox 시작-->
            <div class="bottom_btn" id="PL_c1_btnBox">
                <span><input type="reset" name="reset" value="초기화"></span>
                <span><input type="button" name="submit" value="검색" onclick="search()"></span>
            </div>
            <!--PL_c1_btnBox 끝-->
        </form>
        <!--form 끝-->
    </div>
    <!--PL_c1 끝-->
    <!--PL_c2 시작-->
    <div class="PL_c2">
        <!--PL_c2_title 시작-->
        <div id="PL_c2_title" class="green_title">
            <p>상품 목록</p>
        </div>
        <!--PL_c2_title 끝-->
        <!--form 시작-->
        <form name="prod_list">
                <span>
                    <input type="button" name="button" value="선택삭제" id="delbtn">
                </span>
            <!--table 시작-->
            <table width="100%" class="list_table">
                <thead class="thead">
                <tr>
                    <th width="5%"><input type="checkbox" value="prod_list" id="PL_check" name="selectall"
                                          onclick="PL_selectAll(this)"><label for="PL_check"></label></th>
                    <th width="15%">분류</th>
                    <th width="25%">상품명</th>
                    <th width="15%">판매상태</th>
                    <th width="10%">재고수량</th>
                    <th width="15%">판매가</th>
                    <th width="15%">수정</th>
                </tr>
                </thead>
            </table>
            <!--table 끝-->
            <!-- pageBox 시작-->
            <div class="pageBox">
                <ul>
                    <li id="Maxprev"><<</li>
                    <li id="prev"><</li>
                    <li>></li>
                    <li id="Maxnext">>></li>
                </ul>
                <input type="hidden" value="0" class="page">
                <input type="hidden" id="ajax_hidden">
            </div>
            <!-- pageBox 끝-->
        </form>
        <!--form 끝-->
    </div>
    <!--PL_c2 끝-->
	</section>
</body>
</html>
