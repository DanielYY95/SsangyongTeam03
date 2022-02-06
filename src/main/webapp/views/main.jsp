<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./favicon.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>   
    <link rel="stylesheet" href="./css/main.css"/>
    <link rel="stylesheet" href="./css/footer.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
     integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js" 
     integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
        </style>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <title>동네사진작가 </title>
    <style>
    	.footer{
    		width:100%;
		  	position:fixed;
		  	bottom:0;
    	}
    </style>
</head>
<body>
	<header>
     <jsp:include page="header.jsp" flush="true"/>
     </header>
     <section class="visual">
         <div class="inner">
             <div class="title fade-in">
                 <ul class="text">
                 <li class="text1">동네 근처의 사진작가</li>
                 <li class="text2">취미가 같은 사람과 작품을 나누고,<br>
                    전문가에게 연락이 올 수 있는 기회를 만들어요.</li>
                </ul>
              </div>
              <div id="slideShow">
                <ul class="slides">
                    <li><img src="https://cdn.pixabay.com/photo/2021/12/29/14/47/water-6901805_960_720.jpg" alt="">
                    <p>동네작가 [김효은 작가]</p> </li>
                    <li><img src="./image/flower.jpg" alt="">
                    <p>동네작가 [조민혁 작가]</p> </li>
                    <li><img src="./image/moon.jpg" alt="">
                    <p>동네작가 [양초명 작가]</p></li>
                    <li><img src="./image/fox.jpg" alt="">
                    <p>동네작가 [한가람 작가]</p></li>
                </ul>
                <p class="controller">
                    <!-- &lang : 왼쪽 방향 화살표 
                         &rang : 오른쪽 방향 화살표 -->
                    <span class="prev">&lang;</span>
                    <span class="next">&rang;</span>
                </p>
              </div>
              <script src="./js/slideShow.js"></script>
         </div>
     </section>
     <section class="zone">
         <div class="inner">
            <div class="photolist">
                <h2>전문가 사진</h2>
                <div id=slideShow2>
                <ul class="slides2">
                    <li><img src="https://cdn.pixabay.com/photo/2022/01/13/07/05/house-6934535_960_720.jpg" alt="">
                        <p>동네작가 [전지원 작가]</p> </li>
                        <li><img src="https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130_960_720.jpg" alt="">
                        <p>동네작가 [조민혁 작가]</p> </li>
                        <li><img src="https://cdn.pixabay.com/photo/2016/02/05/03/58/moon-1180345_960_720.jpg" alt="">
                        <p>동네작가 [양초명 작가]</p></li>
                        <li><img src="https://cdn.pixabay.com/photo/2021/06/18/06/51/seagull-6345331_960_720.jpg" alt="">
                        <p>동네작가 [한가람 작가]</p></li>
                </ul>
                </div>
            </div>
        </div>
     </section>
     <div class="footer">
     	<jsp:include page="footer.jsp" flush="true"/>
     </div>
</body>
</html>