<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/hihi.css">
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/popShop.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
</head>
<body>
<div id="wrap">
    <banner class="banner">
        <div class="bannerSlider">
            <div class="bannerImageSlider">
                <img src="/DatePopPrj/resources/user/img/banner/date1.png" alt="">
                <img src="/DatePopPrj/resources/user/img/banner/date2.png" alt="">
                <img src="/DatePopPrj/resources/user/img/banner/date3.png" alt="">
                <img src="/DatePopPrj/resources/user/img/banner/date4.png" alt="">

            </div>

            <button class="prev"><i class="fas fa-angle-left"></i></button>
            <button class="next"><i class="fas fa-angle-right"></i></button>

        </div>
    </banner>

    <main>
        <section class="popShop">
            <div class="popShopNav">
                <ul>
                    <li><a href="#">오늘의 팝딜</a></li>
                    <li><a href="#">내 주변 상품</a></li>
                    <li><a href="#">최근 본 상품</a></li>
                    <li><a href="#">VR체험</a></li>
                    <li><a href="#">방탈출</a></li>
                    <li><a href="#">반지/팔찌</a></li>
                    <li><a href="#">이색 놀거리</a></li>
                    <li><a href="#">영화</a></li>
                    <li><a href="#">카테고리 전체</a></li>
                </ul>
            </div>
        </section>

        <section class="todayPopDeal">

            <div class="PopDealList">
                <a href="browseDetail">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop1.jpg" alt="">
                        <span class="saleInfo">35%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            연남동
                        </span>
                        <span class="title">종합운동장역 / 타로짱</span>
                        <span class="originPrice">19000</span>
                        <span class="content">2인 연애타로 이용권 </span>
                        <span class="salePrice"><strong>35%</strong> 15000 원</span>
                    </div>
                </a>
            </div>
            
            <%--테스트 foreach --%>
			<c:forEach var="list" items="${list}">
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/${list.storeImg}" alt="">
                        <span class="saleInfo">abcd10%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            ${list.storeLoc }
                        </span>
                        <span class="title">${list.storeName }</span>
                        <span class="originPrice">${list.storePrice }</span>
                        <span class="content">${list.storeGoods } </span>
                        <span class="salePrice"><strong>10%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            </c:forEach>

            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop3.jpg" alt="">
                        <span class="saleInfo">20%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            압구정역
                        </span>
                        <span class="title">압구정역 / 파스타맛</span>
                        <span class="originPrice">36000</span>
                        <span class="content">파스타맛 2인세트 </span>
                        <span class="salePrice"><strong>20%</strong> 20000 원</span>
                    </div>
                </a>
            </div>

            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop1.jpg" alt="">
                        <span class="saleInfo">35%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            연남동
                        </span>
                        <span class="title">종합운동장역 / 타로짱</span>
                        <span class="originPrice">19000</span>
                        <span class="content">2인 연애타로 이용권 </span>
                        <span class="salePrice"><strong>35%</strong> 15000 원</span>
                    </div>
                </a>
            </div>

            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop2.jpg" alt="">
                        <span class="saleInfo">10%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            강남역
                        </span>
                        <span class="title">강남역 / 멍치원</span>
                        <span class="originPrice">25000</span>
                        <span class="content">멍치원 애견카페 이용권 </span>
                        <span class="salePrice"><strong>10%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop3.jpg" alt="">
                        <span class="saleInfo">20%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            압구정역
                        </span>
                        <span class="title">압구정역 / 파스타맛</span>
                        <span class="originPrice">36000</span>
                        <span class="content">파스타맛 2인세트 </span>
                        <span class="salePrice"><strong>20%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop1.jpg" alt="">
                        <span class="saleInfo">35%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            연남동
                        </span>
                        <span class="title">종합운동장역 / 타로짱</span>
                        <span class="originPrice">19000</span>
                        <span class="content">2인 연애타로 이용권 </span>
                        <span class="salePrice"><strong>35%</strong> 15000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop2.jpg" alt="">
                        <span class="saleInfo">10%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            강남역
                        </span>
                        <span class="title">강남역 / 멍치원</span>
                        <span class="originPrice">25000</span>
                        <span class="content">멍치원 애견카페 이용권 </span>
                        <span class="salePrice"><strong>10%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop3.jpg" alt="">
                        <span class="saleInfo">20%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            압구정역
                        </span>
                        <span class="title">압구정역 / 파스타맛</span>
                        <span class="originPrice">36000</span>
                        <span class="content">파스타맛 2인세트 </span>
                        <span class="salePrice"><strong>20%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop1.jpg" alt="">
                        <span class="saleInfo">35%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            연남동
                        </span>
                        <span class="title">종합운동장역 / 타로짱</span>
                        <span class="originPrice">19000</span>
                        <span class="content">2인 연애타로 이용권 </span>
                        <span class="salePrice"><strong>35%</strong> 15000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop2.jpg" alt="">
                        <span class="saleInfo">10%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            강남역
                        </span>
                        <span class="title">강남역 / 멍치원</span>
                        <span class="originPrice">25000</span>
                        <span class="content">멍치원 애견카페 이용권 </span>
                        <span class="salePrice"><strong>10%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop3.jpg" alt="">
                        <span class="saleInfo">20%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            압구정역
                        </span>
                        <span class="title">압구정역 / 파스타맛</span>
                        <span class="originPrice">36000</span>
                        <span class="content">파스타맛 2인세트 </span>
                        <span class="salePrice"><strong>20%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop1.jpg" alt="">
                        <span class="saleInfo">35%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            연남동
                        </span>
                        <span class="title">종합운동장역 / 타로짱</span>
                        <span class="originPrice">19000</span>
                        <span class="content">2인 연애타로 이용권 </span>
                        <span class="salePrice"><strong>35%</strong> 15000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop2.jpg" alt="">
                        <span class="saleInfo">10%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            강남역
                        </span>
                        <span class="title">강남역 / 멍치원</span>
                        <span class="originPrice">25000</span>
                        <span class="content">멍치원 애견카페 이용권 </span>
                        <span class="salePrice"><strong>10%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop3.jpg" alt="">
                        <span class="saleInfo">20%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            압구정역
                        </span>
                        <span class="title">압구정역 / 파스타맛</span>
                        <span class="originPrice">36000</span>
                        <span class="content">파스타맛 2인세트 </span>
                        <span class="salePrice"><strong>20%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop1.jpg" alt="">
                        <span class="saleInfo">35%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            연남동
                        </span>
                        <span class="title">종합운동장역 / 타로짱</span>
                        <span class="originPrice">19000</span>
                        <span class="content">2인 연애타로 이용권 </span>
                        <span class="salePrice"><strong>35%</strong> 15000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop2.jpg" alt="">
                        <span class="saleInfo">10%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            강남역
                        </span>
                        <span class="title">강남역 / 멍치원</span>
                        <span class="originPrice">25000</span>
                        <span class="content">멍치원 애견카페 이용권 </span>
                        <span class="salePrice"><strong>10%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="PopDealList">
                <a href="#">
                    <div class="listImg">
                        <img src="/DatePopPrj/resources/user/img/popshop3.jpg" alt="">
                        <span class="saleInfo">20%</span>
                    </div>
                    <div class="listInfo">
                        <span class="region">
                            압구정역
                        </span>
                        <span class="title">압구정역 / 파스타맛</span>
                        <span class="originPrice">36000</span>
                        <span class="content">파스타맛 2인세트 </span>
                        <span class="salePrice"><strong>20%</strong> 20000 원</span>
                    </div>
                </a>
            </div>
            <div class="listPage">
                <ul class="listPageUl">
                    <li><a class="pagePrev" href="#"><i class="fas fa-angle-left"></i></a></li>
                    <li><a href="#" active>1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a class="pageNext" href="#"><i class="fas fa-angle-right"></i></a></li>
                </ul>
            </div>
        </section>
    </main>
    <script>
        let curPos = 0;
        let position = 0;
        const IMAGE_WIDTH = 1080;
        const prevBtn = document.querySelector(".prev")
        const nextBtn = document.querySelector(".next")
        const images = document.querySelector(".bannerImageSlider")

        function prev() {
            if (curPos > 0) {
                position += IMAGE_WIDTH;
                images.style.transform = "translateX("+position+"px)";
                curPos = curPos - 1;
            } else {
                curPos = 3;
                position = IMAGE_WIDTH * -3;
                images.style.transform = "translateX("+position+"px)";
            }
        }

        function next() {
            if (curPos < 3) {
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
</div>

</body>
</html>