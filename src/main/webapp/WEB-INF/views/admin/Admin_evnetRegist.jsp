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
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script type="text/javascript" src="/DatePopPrj/resources/admin/js/ckeditor/ckeditor.js"></script>
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
		<!--Ecreate 시작-->
		<div class="Ecreate">
		    <!--EC_c1 시작-->
		    <div class="EC_c1">
		        <!--form 시작-->
		        <form name="create_event">
		            <p id="EC_c1_title" class="product_title"><label>기획전/이벤트 등록</label></p>
		            <table class="EC_table">
		                <tr>
		                    <th>분류</th>
		                    <td>
		                        <select id="typeFlag">
		                            <option value="0">기획전</option>
		                            <option value="1">이벤트</option>
		                        </select>
		                    </td>
		                </tr>
		                <tr>
		                    <th>진행여부</th>
		                    <td>
		                        <span><input type="radio" name="ing" value="1" checked
		                                     style="width: 14px; height: 14px;"> 진행중</span>
		                        <span><input type="radio" name="ing" value="0"
		                                     style="width: 14px; height: 14px;"> 진행중지</span>
		                    </td>
		                </tr>
		                <tr id="event_priod">
		                    <th>진행기간</th>
		                    <td><input type="date" name="date" id="dateStart"> - <input type="date" name="date" id="dateEnd">
		                    </td>
		                </tr>
		                <tr>
		                    <th>이미지</th>
		                    <td><input type="file" name="file"></td>
		                </tr>
		                <tr>
		                    <th>이벤트명</th>
		                    <td><input type="text" name="text" placeholder="100자 내외로 입력하세요" maxlength="100" id="title"></td>
		                </tr>
		                <tr>
		                    <th>설명</th>
		                    <td><input type="text" name="text" placeholder="100자 내외로 입력하세요" maxlength="100" id="des"></td>
		                </tr>
		            </table>
		            <div class="EC_editlist">
		                <p>상세설명</p>
		                <div class='RC_c3_htmllist'>
		                    <div class='create_html'><span>HTML</span></div>
		                    <textarea class='textarea' name='textarea'></textarea>
		                </div>
		                <script type="text/javascript">
		                    CKEDITOR.replace('textarea'
		                        , {
		                            height: 300
		                        });
		                </script>
		                <!--EC_c1_btnBox 시작-->
		                <div id="EC_c1_btnBox" class="bottom_btn">
		                    <span><input type="reset" name="초기화" value="초기화"></span>
		                    <span><input type="button" name="등록" value="등록" onclick="sendit()"></span>
		                </div>
		            </div>
		            <!--EC_c1_btnBox 끝-->
		        </form>
		        <!--form 끝-->
		    </div>
		    <!--EC_c1 끝-->
		</div>
		<!--Ecreate 끝-->
    </section>
</body>
</html>