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
		<div class="content_title">
		    <p>전체 상품 관리<span>주문 관리</span></p>
		</div>
		<!--content_title 끝-->
		<!--Order_list 시작-->
		<div class="Order_list">
		    <!--OL_c1 시작-->
		    <div class="OL_c1">
		        <!--form 시작-->
		        <form name="order_search">
		            <p id="OL_c1_title" class="product_title"><label>주문 조회</label></p>
		            <!--table 시작-->
		            <table>
		                <tr>
		                    <th width="100">구매일자</th>
		                    <td>
		                        <input type="date" name="date" value="기간필터" id="date_start"> - <input type="date" name="date" value="기간필터" id="date_end">
		                        <span class="datebtn">
		                                <input type="button" name="button" value="최근 1주일" id="weekbtn">
		                                <input type="button" name="button" value="최근 1개월" id="monthbtn">
		                                <input type="button" name="button" value="최근 3개월" id="three_monthbtn">
		                        </span>
		                    </td>
		                </tr>
		                <tr>
		                    <th>주문상태</th>
		                    <td>
		                        <span><input type="checkbox" name="order_state" value="1" id="OL_check_1"><label for="OL_check_1">입금완료</label></span>
		                        <span><input type="checkbox" name="order_state" value="2"  id="OL_check_2"><label for="OL_check_2">상품준비중</label></span>
		                        <span><input type="checkbox" name="order_state" value="3"  id="OL_check_3"><label for="OL_check_3">배송준비중</label></span>
		                        <span><input type="checkbox" name="order_state" value="4"  id="OL_check_4"><label for="OL_check_4">배송중</label></span>
		                        <span><input type="checkbox" name="order_state" value="5"  id="OL_check_5"><label for="OL_check_5">배송완료</label></span><br>
		                        <span><input type="checkbox" name="order_state" value="6"  id="OL_check_6"><label for="OL_check_6">취소</label></span>
		                        <span><input type="checkbox" name="order_state" value="7"  id="OL_check_7"><label for="OL_check_7">반품요청</label></span>
		                        <span><input type="checkbox" name="order_state" value="8"  id="OL_check_8"><label for="OL_check_8">반품</label></span>
		                        <span><input type="checkbox" name="order_state" value="9"  id="OL_check_9"><label for="OL_check_9">환불요청</label></span>
		                        <span><input type="checkbox" name="order_state" value="0"  id="OL_check_10"><label for="OL_check_10">환불</label></span>
		                    </td>
		                </tr>
		                <tr>
		                    <th>주문번호</th>
		                    <td>
		                        <input type="text" name="text" placeholder="주문번호를 입력하세요" id="orderIdx">
		                    </td>
		                </tr>
		            </table>
		            <!--table 끝-->
		            <!--OL_c1_btnBox 시작-->
		            <div class="bottom_btn" id="OL_c1_btnBox">
		                <span><input type="reset" name="reset" value="초기화"></span>
		                <span><input type="button" name="submit" value="검색" id="schbtn"></span>
		            </div>
		            <!--OL_c1_btnBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--OL_c1 끝-->
		    <!--OL_c2 시작-->
		    <div class="OL_c2">
		        <!--OL_c2_title 시작-->
		        <div id="OL_c2_title" class="green_title">
		            <p>주문 목록</p>
		        </div>
		        <!--OL_c2_title 끝-->
		        <!--form 시작-->
		        <form name="order_list">
		                <span>
		<!--                    <input type="button" name="button" value="선택삭제" id="delbtn">-->
		                </span>
		            <!--table 시작-->
		            <table width="100%" class="list_table">
		                <thead class="thead">
		                    <tr>
		                        <th width="5%"><input type="checkbox" value="cou_list" id="OL_check" name="selectall" onclick="OL_selectAll(this)"><label for="OL_check"></th>
		                        <th width="14%">구매자</th>
		                        <th width="22%">주문정보</th>
		                        <th width="14%">결제금액</th>
		                        <th width="20%">구매일자</th>
		                        <th width="15%">주문상태</th>
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
		                <input type="hidden" value="0" class="page">
		                <input type="hidden" id="ajax_hidden">
		            </div>
		            <!-- pageBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--OL_c2 끝-->
		</div>
    </section>
</body>
</html>