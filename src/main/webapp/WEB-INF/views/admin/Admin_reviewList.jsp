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
	        <p>전체 상품 관리<span>상품 후기</span></p>
	    </div>
	    <!--content_title 끝-->
	    <!--Review_list 시작-->
	    <div class="Review_list">
	        <!--PR_c1 시작-->
	        <div class="PR_c1">
	            <!--form 시작-->
	            <form name="pro_review_search">
	                <p id="PR_c1_title" class="product_title"><label>후기 조회</label></p>
	                <!--table 시작-->
	                <table>
	                    <tr>
	                        <th width="100">상품 검색</th>
	                        <td>
	                            <select style="width: 90px; padding-left: 10px;" id="select">
	                                <option value="">전체</option>
	                                <option value="TRUE">답변완료</option>
	                                <option value="FALSE">답변대기</option>
	                            </select>
	                            <input type="text" name="text" placeholder="상품명을 입력하세요" id="title">
	                        </td>
	                    </tr>
	                </table>
	                <!--table 끝-->
	                <!--PR_c1_btnBox 시작-->
	                <div class="bottom_btn" id="PR_c1_btnBox">
	                    <span><input type="button" name="button" value="초기화"></span>
	                    <span><input type="button" name="button" value="검색" onclick="sendit()"></span>
	                </div>
	                <!--PR_c1_btnBox 끝-->
	            </form>
	            <!--form 끝-->
	        </div>
	        <!--PR_c1 끝-->
	        <!--PR_c2 시작-->
	        <div class="PR_c2">
	            <!--OL_c2_title 시작-->
	            <div id="PR_c2_title" class="green_title">
	                <p>상품 후기 목록 <span>(<span>현재 등록 후기 : 2개</span> <span>답변대기 : 1개</span> <span>답변완료 : 1개</span>)</span></p>
	            </div>
	            <!--PR_c2_title 끝-->
	            <!--form 시작-->
	            <form name="review_list">
	                <span>
	                    <input type="button" name="button" value="선택삭제" id="delbtn">
	                </span>
	                <!--table 시작-->
	                <table width="100%" class="list_table">
	                    <thead class="thead">
	                        <tr>
	                            <th width="5%"><input type="checkbox" id="PR_check" name="selectall" onclick="PR_selectAll(this)"><label for="PR_check"></label></th>
	                            <th width="15%">상품명</th>
	                            <th width="15%">상품번호</th>
	                            <th width="25%">아이디/연락처/작성자</th>
	                            <th width="25%">등록/처리날짜</th>
	                            <th width="15%">답변상태</th>
	                        </tr>
	                    </thead>
	                </table>
	                <!--table 끝-->
	                <!-- pageBox 시작-->
	                <div class="pageBox">
	                    <ul>
	                        <li id="Maxprev"><a href="#"><<</a></li>
	                        <li id="prev"><</li>
	                        <li>></li>
	                        <li id="Maxnext"><a href="#">>></a></li>
	                    </ul>
	                    <input type="hidden" id="ajax_hidden">
	                    <input type="hidden" value="0" class="page">
	                </div>
	                <!-- pageBox 끝-->
	            </form>
	            <!--form 끝-->
	        </div>
	        <!--PR_c2 끝-->
	    </div>
	    <!--Review_list 끝-->
    </section>
</body>
</html>