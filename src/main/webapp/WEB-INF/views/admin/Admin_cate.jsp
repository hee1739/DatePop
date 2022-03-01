<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html>
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
		<div class="content_title"><p>전체 상품 관리<span>상품 카테고리 관리</span></p></div>
		<!--content_title 끝-->
		<!--PCategory 시작-->
		<div class="PCategory">
		    <!--PCategory 끝-->
		    <!--Pcate_c1 시작-->
		    <div class="Pcate_c1">
		        <div class="Pcate_c1_box">
		            <div class="Pcate_c1_title"><p>카테고리</p></div>
		            <form class="Pcate_c1_cateBox_1">
		                <ul class="Pcate_ulbox">
		                </ul>
		                <div class="Pcate_c1_btnBox">
		                    <input type="button" value="등록" name="submit" onclick="modal_open()">
		                    <input type="button" value="수정" name="edit" onclick="modal_open_2()">
		                    <input type="button" value="삭제" onclick="" name="delete" id="Prod_cate_delbtn">
		                </div>
		            </form>
		            <!-- 등록 팝업창 부분 시작 -->
		            <div id="mw_temp" class="mw_s">
		                <div class="bg_s"><!--이란에는 내용을 넣지 마십시오.--></div>
		                <div class="fg_s">
		                    <div id="modal_title" class="modal_greentitle">
		                        <p>1차 카테고리 추가<span><img src='./img/close2.png' onclick="modal_close()" class="modal_closeBtn"></span></p>
		                    </div>
		                    <div class="Modal">
		                        <div class="modal_cateBox_s" method="" action="#" id="modal_form">
		                            <div class="modal_search_s">
		                                <p><span>카테고리 명</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="PC_cateregist"></p>
		                            </div>
		                            <div class="modal_btn">
		                                <input type="button" value="닫기" onclick="modal_close()">
		                                <input type="button" value="등록" onclick="modal_regist_prod_1()">
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!--등록 팝업창 부분 끝 -->
		            <!--수정 팝업창 부분 시작 -->
		            <div id="mw_temp_t" class="mw_t">
		                <div class="bg_t"><!--이란에는 내용을 넣지 마십시오.--></div>
		                <div class="fg_t">
		                    <div id="modal_title1" class="modal_greentitle">
		                        <p>1차 카테고리 수정<span><img src='./img/close2.png' onclick="modal_close_2()" class="modal_closeBtn"></span></p>
		                    </div>
		                    <div class="Modal">
		                        <form class="modal_cateBox_t" method="" action="#" id="modal_form1">
		                            <div class="modal_search_t">
		                                <p class="sel_catename"><span>선택 카테고리명 :</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="select_cate" readonly></p>
		                                <p><span>수정 카테고리명 :</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="edit_text"></p>
		                            </div>
		                            <div class="modal_btn">
		                                <input type="button" value="닫기" onclick="modal_close_2()">
		                                <input type="button" value="수정" onclick="modal_edit_prod_1()">
		                            </div>
		                        </form>
		                    </div>
		                </div>
		            </div>
		            <!--수정 팝업창 부분 끝 -->
		            <form class="Pcate_c1_cateBox_1">
		                <ul class="Pcate_ulbox_2">
		                </ul>
		                <div class="Pcate_c1_btnBox">
		                    <input type="button" value="등록" name="submit" onclick="modal_open_3()">
		                    <input type="button" value="수정" name="edit" onclick="modal_open_4()">
		                    <input type="button" value="삭제" onclick="" name="delete" id="Prod_cate_delbtn_2">
		                </div>
		            </form>
		            <!--등록 팝업창 부분 시작 -->
		            <div id="mw_temp_k" class="mw_s">
		                <div class="bg_s"><!--이란에는 내용을 넣지 마십시오.--></div>
		                <div class="fg_s">
		                    <div id="modal_title_k" class="modal_greentitle">
		                        <p>2차 카테고리 추가<span><img src='./img/close2.png' onclick="modal_close_3()" class="modal_closeBtn"></span></p>
		                    </div>
		                    <div class="Modal">
		                        <div class="modal_cateBox_s" method="" action="#" id="modal_form_k">
		                            <div class="modal_search_s">
		                                <p class="sel_catename"><span>선택 카테고리명 :</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="select_cate_1" readonly></p>
		                                <p><span>등록 카테고리명 :</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="PC_cateregist_2"></p>
		                            </div>
		                            <div class="modal_btn">
		                                <input type="button" value="닫기" onclick="modal_close_3()">
		                                <input type="button" value="등록" onclick="modal_regist_prod_2()">
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <!--등록 팝업창 부분 끝 -->
		            <!--수정 팝업창 부분 시작 -->
		            <div id="mw_temp_o" class="mw_t">
		                <div class="bg_t"><!--이란에는 내용을 넣지 마십시오.--></div>
		                <div class="fg_t">
		                    <div id="modal_title_o" class="modal_greentitle">
		                        <p>2차 카테고리 수정<span><img src='./img/close2.png' onclick="modal_close_4()" class="modal_closeBtn"></span></p>
		                    </div>
		                    <div class="Modal">
		                        <form class="modal_cateBox_t" method="" action="#" id="modal_form_o">
		                            <div class="modal_search_t">
		                                <p class="sel_catename"><span>선택 카테고리명 :</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="select_cate_2" readonly></p>
		                                <p><span>수정 카테고리명 :</span>
		                                    <input type="text" style="width: 200px; margin-left: 21px;" id="edit_text_2"></p>
		                            </div>
		                            <div class="modal_btn">
		                                <input type="button" value="닫기" onclick="modal_close_4()">
		                                <input type="button" value="2차 수정" onclick="modal_edit_prod_2()">
		                            </div>
		                        </form>
		                    </div>
		                </div>
		            </div>
		            <!--수정 팝업창 부분 끝 -->
		        </div>
		    </div>
		    <!--Pcate_c1 끝-->
		    <!--Pcate_c2 시작-->
		    <div class="Pcate_c2">
		        <div class="Pcate_c2_title"><span>상단 배너 설정</span></div>
		        <form action="#" method="" class="Pcate_c2_bannerBox">
		            <input type="hidden" id="Pcate_cateval_1" >
		            <input type="hidden" id="Pcate_cateval_2" >
		            <input type="hidden" id="Pcate_rootidx_val" >
		            <table>
		                <tr class="Pcate_c2_btnBox">
		                    <td>
		                        <div class="file_input_div">
		                            <input type="button" value="파일 등록" class="file_input_button" style=" background-color: #266266; color:white;">
		                            <input type="file" class="file_input_hidden" id="Pcate_input">
		                        </div>
		                    </td>
		                    <td><input type="submit" value="등록" class="Pcate_c2_submit"></td>
		                </tr>
		                <tr>
		                    <td class="Pcate_c2_imgBox" colspan="2">
		                        <div class="Pcate_c2_img">
		                            <img src="" id="Pcate_banner">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                    <td class="Pcate_c2_descrBox" colspan="2">
		                        <div class="Pcate_c2_description">
		                            권장크기 : 800 x 250 쇼핑검색에 노출되지 않는 경우 <u>가이드를 확인해주세요.</u>
		                        </div>
		                    </td>
		                </tr>
		            </table>
		        </form>
		    </div>
		    <!--Pcate_c2 끝-->
		</div>
<!--PCategory 끝-->
</section>
</body>
</html>