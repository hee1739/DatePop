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
    <title>고객센터 | 공지사항 관리</title>
    <link rel="stylesheet" href="/DatePopPrj/resources/admin/css/script.css">
</head>
<body>
	<section>
		<!--content_title 시작-->
		<div class="content_title">
		    <p>고객센터<span>공지사항 관리</span></p>
		</div>
		<!--content_title 끝-->
		<!--Notice 시작-->
		<div class="Notice">
		    <!--No_c1 시작-->
		    <div class="No_c1">
		        <!--form 시작-->
		        <form name="notice_search">
		            <p class="product_title" id="No_c1_title"><label>공지사항 조회</label><span style="margin-left: 20px;"><input type="button" name="button" value="공지사항 등록하기" onclick="No_location_1()"></span></p>
		            <!--table 시작-->
		            <table>
		                <tr>
		                    <th>제목</th>
		                    <td>
		                        <input type="text" name="text" id="title" placeholder="공지사항 제목 입력">
		                    </td>
		                </tr>
		                <tr>
		                    <th>분류</th>
		                    <td>
		                        <select style="width: 155px; padding-left: 10px;" id="typeFlag">
		                            <option>분류</option>
		                            <option value="1">일반</option>
		                            <option value="2">이벤트</option>
		                            <option value="3">배송지연</option>
		                            <option value="4">상품</option>>
		                        </select>
		                    </td>
		                </tr>
		                <tr>
		                    <th width="100">기간</th>
		                    <td>
		                        <input type="date" name="date" value="기간필터" id="date_start"> - <input type="date" name="date" value="기간필터" id="date_end">
		                        <span class="datebtn">
		                            <input type="button" name="button" value="최근 1주일" id="weekbtn">
		                            <input type="hidden" id="week" value="null">
		                            <input type="button" name="button" value="최근 1개월" id="monthbtn">
		                            <input type="hidden" id="month" value="null">
		                            <input type="button" name="button" value="최근 3개월" id="three_monthbtn">
		                            <input type="hidden" id="threemonth" value="null">
		                        </span>
		                    </td>
		                </tr>
		            </table>
		            <!--table 끝-->
		            <!--No_c1_btnBox 시작-->
		            <div class="bottom_btn" id="No_c1_btnBox">
		                <span><input type="reset" name="reset" value="초기화"></span>
		                <span><input type="button" name="submit" value="검색" id="schbtn"></span>
		            </div>
		            <!--No_c1_btnBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--No_c1 끝-->
		    <!--No_c2 시작-->
		    <div class="No_c2">
		        <!--No_c2_title 시작-->
		        <div id="No_c2_title" class="green_title">
		            <p>공지사항 목록</p>
		        </div>
		        <!--No_c2_title 끝-->
		        <!--form 시작-->
		        <form name="notice_list">
		                <span>
		                    <input type="button" name="button" value="선택삭제" id="delbtn">
		                </span>
		            <!--table 시작-->
		            <table width="100%" class="list_table">
		                <thead class="thead">
		                <tr>
		                    <th width="5%"><input type="checkbox" class="NoticeCheck" id="No_check" name="selectall" onclick="No_selectAll(this)"><label for="No_check"></th>
		                    <th width="7%">번호</th>
		                    <th width="19%">제목</th>
		                    <th width="23%">내용</th>
		                    <th width="15%">분류</th>
		                    <th width="18%">등록일</th>
		                    <th width="13%">상세</th>
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
		                <input type="hidden" value="0" class="page_hidden">
		                <input type="hidden" id="ajax_hidden">
		            </div>
		            <!-- pageBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--No_c2 끝-->
		</div>
		<!--Notice 끝-->
	</section>
</body>
</html>