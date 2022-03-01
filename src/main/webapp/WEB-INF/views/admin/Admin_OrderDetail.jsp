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
    <p>전체 상품 관리 <span>주문 상세</span></p>
</div>
<!--content_title 끝-->
<!--Question_list 시작-->
<div class="Order">
    <!--PQ_c1 시작-->
    <div class="Order_c1">
        <!--form 시작-->
        <form name="OrderForm">
            <p class="product_title"><label>주문 상세</label></p>
            <!--table 시작-->
            <table id="orderDetail">
                <tr>
                    <th>주문자명</th>
                    <td id="name"></td>
                </tr>
                <tr>
                    <th>주문번호</th>
                    <td id="proIdx"></td>
                </tr>
                <tr>
                    <th>주문상품</th>
                    <td id="proList"></td>
                </tr>
                <tr>
                    <th>결제금액</th>
                    <td id="price"></td>
                </tr>
                <tr>
                    <th>주문날짜</th>
                    <td id="regdate"></td>
                </tr>
<!--                <tr>-->
<!--                    <th>주문상태</th>-->
<!--                    <td id="state"></td>-->
<!--                </tr>-->
            </table>
            <!--table 끝-->
        </form>
        <p id="O_title2" class="product_title"><label>주문상태 변경</label></p>
        <form>
            <!--table 시작-->
            <table id="order_answer">
                <tr>
                    <th>주문 상태</th>
                    <td>
                        <span><input type="checkbox" name="order_state" value="1" id="OL_check_1"><label for="OL_check_1">입금완료</label></span>
                        <span><input type="checkbox" name="order_state" value="2"  id="OL_check_2"><label for="OL_check_2">상품준비중</label></span>
                        <span><input type="checkbox" name="order_state" value="3"  id="OL_check_3"><label for="OL_check_3">배송준비중</label></span>
                        <span><input type="checkbox" name="order_state" value="4"  id="OL_check_4"><label for="OL_check_4">배송중</label></span>
                        <span><input type="checkbox" name="order_state" value="5"  id="OL_check_5"><label for="OL_check_5">배송완료</label></span><br>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <span><input type="checkbox" name="order_state" value="6"  id="OL_check_6"><label for="OL_check_6">취소</label></span>
                        <span><input type="checkbox" name="order_state" value="7"  id="OL_check_7"><label for="OL_check_7">반품요청</label></span>
                        <span><input type="checkbox" name="order_state" value="8"  id="OL_check_8"><label for="OL_check_8">반품</label></span>
                        <span><input type="checkbox" name="order_state" value="9"  id="OL_check_9"><label for="OL_check_9">환불요청</label></span>
                        <span><input type="checkbox" name="order_state" value="0"  id="OL_check_10"><label for="OL_check_10">환불</label></span>
                    </td>
                </tr>
            </table>
            <!--table 끝-->
            <!--QL_c1_btnBox 시작-->
            <div id="QL_c1_btnBox" class="bottom_btn">
                <input type="button" name="submit" value="상태 변경하기" onclick="sendit()" style="width: 300px;">
            </div>
            <!--QL_c1_btnBox 끝-->
        </form>
        <!--form 끝-->
    </div>
    <!--QL_c1 끝-->
</div>
    </section>
</body>
</html>