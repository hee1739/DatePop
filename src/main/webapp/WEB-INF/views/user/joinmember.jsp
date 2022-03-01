<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/joinmember.css">
</head>
<body>
    <form action="join.do" method="post">
    <!--헤드-->
    <div class="mimg"> <a href="../html/mainpop.html"><img src="/DatePopPrj/resources/img/popcharacter.png" alt=""></a></div>

    <div class="f1"> 회원가입 </div> <br>
    <!--이름-->
    <div class="j1"> 
        <input class="ide" type="text" placeholder="이름" name="userName" id="userName">
      </div> <br>
 
   <!--이메일 입력창-->
    <div class="j1"> 
      <input class="ide" type="text" placeholder="이메일" name="userId" id="userId">
    </div> <br>
    <!--비밀번호 입력창-->
    <div class="j2"> 
    <input class="pw1" type="password" placeholder=" 비밀번호 " name="userPw" id="userPW">
    </div> <br>
    <!--닉네임-->
      <div class="j1"> 
          <input class="ide" type="text" placeholder="닉네임" name="userNick" id="userNick">
      </div> <br>
<!--성별 체크창-->
   <div class="g1"> 
    <select class="s1" name="gender" id="gender">
      <option value="">성별을 선택하세요</option>
      <option value="1">남자</option>
      <option value="2">여자</option>
    </select>
  </div>
  <br><br>
<!--체크박스 창-->
 <div class="checkbox"> 
    <div class="Ex_agree"> 약관 동의 
    </div> <br>
      <div class="allchk">
      <input type='checkbox' name='userAgree' value='1' onclick="selectAll(this)"/> 전체동의
      </div>
     <br>
     <!--세부 사항-->
        <div class="ex_content">
         <div class="cf0"> <input type='checkbox' name='age' value='나이 동의' /> 만 14세 이상입니다 <span class="sub_ex">필수</span> </div>
          <br><br>
          <div class="cf1"> <input type='checkbox' name='checkagree' value='이용약관동의' /> 이용약관동의 <span class="sub_ex">필수</span></div> <br><br>
          <div class="cf2"> <input type='checkbox' name='private agree' value='개인정보 수집' /> 개인정보수집 및 이용동의 <span class="sub_ex">필수</span></div> <br><br>
          <div class="cf3"> <input type='checkbox' name='Financial deal agree' value='금융거래 약관' /> 전자 금융거래 이용약관 <span class="sub_ex">필수</span></div> <br><br>
          <div class="cf4"> <input type='checkbox' name='Collecting personal information' value='개인정보 3자 수집' /> 개인정보 제3자(판매자) 제공 <span class="sub_ex">선택</span></div><br>
        </div>
  </div>
 <br>
<!--가입 확인 창-->
    <div class="c1">
            <button type="submit" class="b1"> 가입 완료하고 혜택 받기 </button>
    </div> <br>
    <!--로그인 창이라 mail.login으로 연결시켜야함-->
     <div class="is1"> <a href="../html/mail.login.html"> 이미 아이디가 있으신가요? </a> </div>


     <!--하단 꾸미기-->
<div class="bo1">  <br> 주식회사 텐핑거스(대표 신동해) <br>
    서울특별시 구로구 디지털로272, 한신IT타워 617호
    <br> 사업자등록번호 : 119-86-86868
    <br> 통신판매업신고 제2017-서울구로-1419호
    <br> 고객센터: 070-4410-8836 / support@datepop.co.kr </div>
</form> 
</body>