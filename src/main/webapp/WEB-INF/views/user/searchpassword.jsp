<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="searchpassword.css">
    <title>비밀번호 찾기</title>
</head>
<body>
    <form action="">
        <!--헤드 +이미지 누르면 메인 페이지로 보내야됨-->
        <div class="mimg"> <a href="mainpop"><img src="popcharacter.png" alt=""></a></div>
        <div class="f1"> 비밀번호를 잊으셨나요? </div> <br>
        <!--이메일 입력창-->
        <div class="j1"> 
          <input class="ide" type="text" placeholder="이메일">
        </div> <br>
        <!--이름 입력창-->
        <div class="j2">
        <input class="name" type="text" placeholder=" 이름 ">
        </div> <br>
   <!--비밀번호 보내기 누르면 어떻게 되는지 설명-->
        <div class="sendex">* 입력하신 이메일로 비밀번호가 발송됩니다</div> <br>
    <!--로그인 창-->
        <div class="c1">
                <button type="button" onClick="location.href='https://naver.com'" class="b1"> 보내기 </button>
        </div> 
</body>
</html>