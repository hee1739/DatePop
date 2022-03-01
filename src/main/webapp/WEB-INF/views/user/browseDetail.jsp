<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/hihi.css">
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/browseDetail.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
</head>
<body>
<div id="wrap">
    <main>
        <section class="banner">
            <div class="browseDetail">
                <div class="container">
                    <img src="/DatePopPrj/resources/user/img/banner/date1.png" alt="">
                    <img src="/DatePopPrj/resources/user/img/banner/date2.png" alt="">
                    <img src="/DatePopPrj/resources/user/img/banner/date3.png" alt="">
                </div>
                <button class="prev"><i class="fas fa-angle-left"></i></button>
                <button class="next"><i class="fas fa-angle-right"></i></button>
            </div>
        </section>

        <section>
            <div class="browseContent">
                <div class="container">
                    <div class="prodLeft">
                        <div class="imgList">
                            <img src="/DatePopPrj/resources/user/img/banner/date1.png" alt="">
                        </div>
                        <div class="clientCho">
                            <a href=""><span class="wish">상품찜</span><i class="far fa-heart"></i><span class="wishCnt">373</span></a>
                            <a href=""><span class="sellerFav">판매자찜</span><i class="far fa-heart"></i><span
                                    class="sellerCnt">176</span></a>
                            <a href=""><span class="share">공유</span><i class="fas fa-share-alt"></i></a>
                            <a href=""><span class="declare">신고</span><i class="far fa-bell"></i></a>
                        </div>

                        <div class="satisPercent">
                            <span class="info"><i class="fas fa-certificate"></i>판매자 품질 만족지수</span>
                            <span class="prodPercent">상품 <strong>90</strong>점</span>
                            <span class="deliveryPercent">배송 <strong>90</strong>점</span>
                        </div>

                    </div>
                    <div class="prodRight">
                        <div class="titCont">
                            <span class="region">독산역</span><br/>
                            <span class="title">연금술차 금천점</span><br/>
                            <div class="contAndPrice">
                                <span class="cont">2인 B코스 (담금주체험 + 명리학)</span>
                                <span class="originPrice">90,000</span><br/>
                                <span class="when">평일 이용권</span>
                                <span class="salePrice"><strong>20%</strong>72,000</span><br/>
                                <div class="review"><i class="far fa-check-circle"></i>다녀온 리뷰 <span>6</span>개</div>
                                <div class="alert"><i class="far fa-check-circle"></i>선착순 마감 <span>3</span>장 밖에 안 남았어요!
                                </div>
                                <div class="detail">
                                    <span>명리학을 통해 연애+건강 상담 후 자신에게 맞는 재료로 담금주를 체험해 볼 수 있는 프라이빗 담금주 공방</span>
                                </div>
                                <div class="reserve">
                                    <i class="far fa-calendar-alt"></i><span>예약/문의하기</span><span class="phone">010-1234-5678</span>
                                </div>
                                <div class="mainMenu">
                                    <i class="fas fa-bars"></i><span>주요메뉴</span>
                                </div>
                                <div class="mainMenuDetail">
                                    <div class="menuList">
                                        <a href=""class="menuListA">
                                            <img src="/DatePopPrj/resources/img/banner/date1.png" alt="">
                                            <span class="menuTitle">담금담금주</span>
                                            <span class="content">맛있는 담금담금주</span>
                                            <span class="price">19000원</span>
                                        </a>
                                    </div>
                                    <div class="menuList">
                                        <a href=""class="menuListA">
                                            <img src="/DatePopPrj/resources/img/banner/date1.png" alt="">
                                            <span class="menuTitle">담금담금주</span>
                                            <span class="content">맛있는 담금담금주</span>
                                            <span class="price">19000원</span>
                                        </a>
                                    </div>
                                    <div class="menuList">
                                        <a href=""class="menuListA">
                                            <img src="/DatePopPrj/resources/user/img/banner/date1.png" alt="">
                                            <span class="menuTitle">담금담금주</span>
                                            <span class="content">맛있는 담금담금주</span>
                                            <span class="price">19000원</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </main>

</div>

<script>
    let curPos = 0;
    let position = 0;
    const IMAGE_WIDTH = 1080;
    const prevBtn = document.querySelector(".prev")
    const nextBtn = document.querySelector(".next")
    const images = document.querySelector(".container")

    function prev() {
        if (curPos > 0) {
            position += IMAGE_WIDTH;
            images.style.transform = "translateX("+position+"px)";
            curPos = curPos - 1;
        } else {
            curPos = 2;
            position = IMAGE_WIDTH * -2;
            images.style.transform = "translateX("+position+"px)";
        }
    }

    function next() {
        if (curPos < 2) {
            position -= IMAGE_WIDTH;
            images.style.transform = "translateX("+position+"px)";
            curPos = curPos + 1;
        } else {
            curPos = 0;
            position = 1080;
            position -= IMAGE_WIDTH;
            images.style.transform = "translateX("+position+"px)";
        }
    }

    function init() {
        prevBtn.addEventListener("click", prev)
        nextBtn.addEventListener("click", next)
    }

    init();
    setInterval(prev, 5000);
</script>

</body>
</html>