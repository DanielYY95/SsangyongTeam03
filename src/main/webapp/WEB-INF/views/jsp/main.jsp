<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="ko">

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
     integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js" 
     integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
        <!-- css 파일 -->
     <link rel="stylesheet" href="${path}/css/main.css">
<!--      <link rel="stylesheet" href="../css/footer.css"> -->

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
	</style>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <title>동네사진작가 </title>
</head>
<body>
     <!-- header  -->
     <header>
     <jsp:include page="new_header.jsp"/>
     </header>
     
        <!------------------------------   내 작업 영역  ------------------------------>


     <!-- VISUAL 메인 중심부 -->
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
                    <li><img src="https://cdn.pixabay.com/photo/2020/09/19/10/40/dog-5584135_960_720.jpg" alt="">
                     <p>동네작가 [조민혁 작가]</p> </li>
                    <li><img src="https://cdn.pixabay.com/photo/2022/01/10/16/30/flowers-6928749_960_720.jpg" alt="">
                     <p>동네작가 [양초명 작가]</p></li>
                    <li><img src="https://cdn.pixabay.com/photo/2022/01/06/12/49/dried-flowers-6919415_960_720.jpg" alt="">
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
                <h2>금주의 동네작가 사진</h2>
                <ul class=slide1>
                    <li><img src="https://cdn.pixabay.com/photo/2022/01/13/07/05/house-6934535_960_720.jpg" alt="">
                         <p class="wtitle">동네작가 [전지원 작가]</p> </li>
                        <li><img src="https://cdn.pixabay.com/photo/2020/05/13/06/37/korea-5166063_960_720.jpg" alt="">
                         <p class="wtitle">동네작가 [조민혁 작가]</p> </li>
                        <li><img src="https://cdn.pixabay.com/photo/2016/02/05/03/58/moon-1180345_960_720.jpg" alt="">
                         <p class="wtitle">동네작가 [양초명 작가]</p></li>
                        <li><img src="https://cdn.pixabay.com/photo/2019/02/27/20/38/korea-4024986_960_720.jpg" alt="">
                          <p class="wtitle">동네작가 [한가람 작가]</p></li>
                </ul>
                <div class="banner">
                    
                    <div class="bannertext">
                        <span class="material-icons">
                     </span> 동네 사진작가 지원하기. 
                </div>
                 <!--    <div class="bannertext2"> 누구나 도전할 수 있습니다!
                       </div> -->
                
                </div>
            
         
                <h2>금주의 전문가 사진</h2>
                <ul class="slide2">
                    <li><img src="https://cdn.pixabay.com/photo/2022/01/06/07/25/south-korea-6918827_960_720.jpg" alt="">
                         <p class="wtitle">전문작가 [홍길동 작가]</p> </li>
                        <li><img src="https://cdn.pixabay.com/photo/2019/04/20/10/16/eiffel-tower-4141381_960_720.jpg" alt="">
                         <p class="wtitle">전문작가 [조길동 작가]</p> </li>
                        <li><img src="https://cdn.pixabay.com/photo/2015/11/14/16/52/japan-1043416_960_720.jpg" alt="">
                         <p class="wtitle">전문작가 [양길동 작가]</p></li>
                        <li><img src="https://cdn.pixabay.com/photo/2021/06/18/06/51/seagull-6345331_960_720.jpg" alt="">
                         <p class="wtitle">전문작가 [김길동 작가]</p></li>
                </ul>
            </div>
        </div>
     </section>

     <section class="zone2">
        <div class="inner">
            <h2>전문작가 인터뷰</h2>
           <div class="interview">
                       <a href="https://www.hankookilbo.com/News/Read/A2021120710380000695?did=NA">
                       <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMjVfMjgx%2FMDAxNjE2NjQxNDkwNTU2.kIKdu5HQhMwlBemRVhU3lNZKQ_uQHoO2cnXjj8gejM4g.8dNPLEg3raIDTGhkpXvyjZIigeKY7siysrVOuA56WgYg.JPEG.designpress2016%2F210222_Naver1013RT2.jpg&type=sc960_832"/>
                       <div class="imgclick">사진 클릭시 기사 원문 이동. </div>
                    </a>
                       <ul class="proInter">
                     <li class="protext1">전문가 인터뷰 [김명중 작가]
                     </li> 
                       <li class="protext2">김 작가는 이번 전시를 위해 한부모가족, 다문화가족, 맞벌이가족, 입양가족 등 총 열다섯 가족의 다양한 감정과 표정을 담아냈다. 
                        친모 동의 없이도 자녀 출생신고를 할 수 있게 만든 '사랑이법'의 주인공 김지환씨와 딸을 비롯, 네팔 출신 한국 의사 1호로 노인과 외국인노동자 등을 지원하는 활동을 하는 정제한씨 가족, 
                        서울시 동작구 공동체 가구 '선녀방(선한 여자들이 사는 방)'에서 여성 4명과 함께 살고 있는 장신재씨 가족, 교통사고로 척수가 손상돼 휠체어 생활을 하는 모주영씨와 부모 등이 주인공이다.
                        '가족 이야기 사진전'은 다양한 가족에 대한 차별과 편견을 해소하고 가족 다양성의 가치를 확산하자는 취지로 기획됐다. 김지환씨는 "가족의 형태를 떠나 가족 구성원이 행복하다면
                        온전한 가족이라고 생각한다"고 전했고, 모주영씨는 "가족들이 있어 다쳤을 때 힘든 순간을 이겨내고 밝게 웃을 수 있게 됐다"며 각자 느끼는 가족에 대한 소감을 전했다.
                        <br>
                        <br>
                        [출처] 한국일보 맹하경 기자 / hkm07@hankookilbo.com
                       </li>
                    </ul>
               </div>
               <h2>동네작가 인터뷰</h2>
           <div class="interview">
                       <a href="./">
                       <img src="https://cdn.icon-icons.com/icons2/2134/PNG/512/heart_selfie_emoji_emo_icon_131633.png">
                       <div class="imgclick">사진 클릭시 작가 프로필 이동. </div>
                    </a>
                       <ul class="proInter">
                     <li class="protext1">동네작가 인터뷰 [하트하트 작가]
                     </li> 
                       <li class="protext2">동네작가 사이트를 통해 저 또한 사진 작가가 되었습니다~! 다들 사진작가가 될 수 있는 기회를 놓치지 마세요!!
                       </li>
                    </ul>
               </div>
       </div>
    </section>
     



<!-- 푸터 --> 
		<footer>
		 <jsp:include page="footer.jsp"/>
		</footer>
		
</body>

</html>