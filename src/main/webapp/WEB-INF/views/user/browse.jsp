<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/hihi.css">
    <link rel="stylesheet" href="/DatePopPrj/resources/user/css/browse.css">
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
        <section>
            <div class="container">
                <div class="item">
                    <a href="browseDetail">
                    <div class="align"></div>
                    <span class="ko_item">데이트팝딜</span>
                    <span class="en_item">DATEPOP DEAL</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                    <div class="align"></div>
                    <span class="ko_item">오붓한 둘만의 데이트</span>
                    <span class="en_item">INDOOR DATE</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                    <div class="align"></div>
                    <span class="ko_item">코스 대신 짜드립니다.</span>
                    <span class="en_item">HOT SIX</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                    <div class="align"></div>
                    <span class="ko_item">12월 전시축제영화</span>
                    <span class="en_item">3만원 데이트 코스</span>
                    </a>
                </div>
            </div>
            <div class="container">
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">데이트팝딜</span>
                        <span class="en_item">DATEPOP DEAL</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">오붓한 둘만의 데이트</span>
                        <span class="en_item">INDOOR DATE</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">코스 대신 짜드립니다.</span>
                        <span class="en_item">HOT SIX</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">12월 전시축제영화</span>
                        <span class="en_item">3만원 데이트 코스</span>
                    </a>
                </div>
            </div>
            <div class="container">
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">데이트팝딜</span>
                        <span class="en_item">DATEPOP DEAL</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">오붓한 둘만의 데이트</span>
                        <span class="en_item">INDOOR DATE</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">코스 대신 짜드립니다.</span>
                        <span class="en_item">HOT SIX</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">12월 전시축제영화</span>
                        <span class="en_item">3만원 데이트 코스</span>
                    </a>
                </div>
            </div>
            <div class="container">
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">데이트팝딜</span>
                        <span class="en_item">DATEPOP DEAL</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">오붓한 둘만의 데이트</span>
                        <span class="en_item">INDOOR DATE</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">코스 대신 짜드립니다.</span>
                        <span class="en_item">HOT SIX</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <div class="align"></div>
                        <span class="ko_item">12월 전시축제영화</span>
                        <span class="en_item">3만원 데이트 코스</span>
                    </a>
                </div>
            </div>
        </section>
    </main>

    	<!-- footer -->
	<jsp:include page="inc/footer.jsp"/>
    <!-- footer -->

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