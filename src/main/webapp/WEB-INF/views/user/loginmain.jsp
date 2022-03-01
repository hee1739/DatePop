<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 창</title>
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/logcss.css">
</head>
<body>
   <!--상단 -->
    <form action="" >
    <div class="wrap">
<!--메인으로 가는-->
        <div class="tophome"><a href="mainpop.html"><img class="topimg" src="/DatePopPrj/resources/img/popcharacter.png" alt=""></a> </div>
<!--로그인 창들-->
        <div id="header">
    <div class="im1"> <img src="/DatePopPrj/resources/user/img/moneyshape.png" >
        <span><img src="/DatePopPrj/resources/user/img/bus.png"> </span>
        <span><img class="im3" src="/DatePopPrj/resources/user/img/heart.png"></span>
    </div>

    <div class="fcenter">
        <div class="f1"> 로그인 후 더 알차게 이용하세요!</div> <br>
        <div class="f2"> 팝콘 적립,무한 찜하기,팝딜 구매까지 <br> 모든 기능을 이용 가능하답니다.</div>
            <br>
                <div class="b1"> <input class="bu1" type="button" value="카카오톡 로그인">  </div><br>
                <div class="b2"> <input class="bu2"type="button" value="페이스북 로그인">  </div><br>
                <!--join.member 로 연결되도록-->
                <div class="b3"> <input class="bu3" type="button" onclick="location.href='joinmember'" value="이메일 가입/로그인">  </div>
                
    </div> <br>  
                <div class="fm"> 로그인을 하고 약관에 동의합니다
                    
                </div>


        </div>
</form>
</body>
</html>

