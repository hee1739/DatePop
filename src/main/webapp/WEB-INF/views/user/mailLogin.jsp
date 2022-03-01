<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/mail.login.css">
    <title>이메일 로그인</title>
</head>
<body>
    <form action="login.do" method="post">
        <!--헤드-->
        <div class="mimg"> <a href="../html/mainpop.html"><img src="../imge/popcharacter.png" alt=""></a></div>
    
        <div class="f1"> 이메일 로그인 </div> <br>
        <!--이메일 입력창-->
        <div class="j1"> 
          <input class="ide" type="text" placeholder="이메일" name="userId" id="userId">
        </div> <br>
        <!--비밀번호 입력창-->
        <div class="j2">
        <input class="pw1" type="password" placeholder=" 비밀번호" name="userPw" id="userPw">
        </div> <br>
   
    <!--로그인 창-->
        <div class="c1">
                <button type="submit" class="b1" id="btnlogin"> 로그인 </button>
        </div> <br>
        <!--비밀번호 찾기로 연결시켜야함-->
         <div class="is1"> <a href="../html/searchpassword.html"> 비밀번호 찾기 </a> </div>
    
         <!--하단 꾸미기-->
    <div class="bo1">  <br> 주식회사 텐핑거스(대표 신동해) <br>
        서울특별시 구로구 디지털로272, 한신IT타워 617호
        <br> 사업자등록번호 : 119-86-86868
        <br> 통신판매업신고 제2017-서울구로-1419호
        <br> 고객센터: 070-4410-8836 / support@datepop.co.kr </div>
    </form> 
</body>
</html>