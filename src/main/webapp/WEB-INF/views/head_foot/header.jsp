<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<c:set var="path" value="${pageContext.request.contextPath }" />
			<fmt:requestEncoding value="utf-8" />
			<!DOCTYPE html>

			<html>

			<head>
				<meta charset="UTF-8">
				<title>Insert title here</title>
			    <link rel="icon" href="./favicon.png" />
				<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
				<link rel="preconnect" href="https://fonts.googleapis.com">
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
				<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
				<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
				

				<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
					integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"
					integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>
				<style>
					@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
					
					/*
					    일반 태그
					
					*/
					
					html{
					    font-size: 10px;
					
					}
					
					body{
					    color: #333;
					    font-weight: 400;
					    /* 줄 높이 */
					    line-height: 1.4;
					    font-family: 'Nanum Myeongjo', serif;
					    min-height: 1500px;
					    /*  #f6f5f0*/
					    background-color: #f7f7f7;
					    margin: auto;
					    width: 100vw;
					    height: 100vh;
					}
					
					
					img{
					    display: block;
					    width: 300px;
					    height: 300px;
					    max-width: 100%
					
					}
					h2{
					    display: block;
					    padding-left: 20px;
					    padding-top: 50px;
					    padding-bottom: 10px;
					    font-size: 3rem;
					    font-family: 'Gugi', cursive;
					   /* font-family: 'Song Myung', serif; */
					}
					i {
					    padding-top: 30px;
					    padding-bottom: 30px;
					    padding-left: 20px;
					}
					a { 
					    text-decoration: none; color: #333; 
					}
					p {
					    padding-top: 10px;
					    font-size: 17px;
					}
					header{
					    width:100%;
					    /* #f6f5f0 */
					    border-bottom: 1px solid #c8c8c8;
					    position: relative;
					    z-index: 9;
					}
					
					
					
					/*
					    특정 태그
					
					*/
					
					
					.inner {
					    width: 80%;
					    margin: 0 auto;
					    position: relative;
					}
					
					header > .inner{
					    height: 170px;
					}
					header .logo{
					    display: flex;
					}
					header .sub-menu{
					    display: flex;
					    position: absolute;
					    top: 48px;
					    right: 0;
					}
					header .sub-menu ul.menu{
					    /* sub-menu 수평 정렬 (flex) */
					     display: flex;
					}
					header .sub-menu ul.menu li{
					    position: relative;
					}
					
					
					header .sub-menu ul.menu li::before{
					    /* sub-menu 구분선 :: 가상선택자 이용 */
					    content: "";
					    display: block;
					    width: 1px;
					    height: 12px;
					    background-color:gray;
					    position: absolute;
					    top: 0;
					    bottom: 0;
					    margin: auto;
					}
					
					
					
					header .sub-menu ul.menu li:first-child:before{
					    /* :: 가상선택자의 첫번째 선택자 안보이게 */
					    display: none;
					}
					header .sub-menu ul.menu li a {
					    font-size: 1.5rem;
					    padding: 11px 16px;
					    display: block;
					    color: #656565;
					    font-weight: 600;
					}
					header .sub-menu ul.menu li a:hover {
					    /* 마우스 올렸을때 글자 색상 블랙 */
					    color: #000;
					}
					header .sub-menu .search {
					    height: 30px;
					    position: relative;
					    text-decoration: none;
					
					}
					header .sub-menu .search input{
					    width: 250px;
					    height: 30px;
					    margin-top: 5px;
					    margin-right: 5px;
					    padding: 10px 10px;
					    border: 1px solid #ccc;
					    box-sizing: border-box;
					    outline: none;
					    background-color: #fff;
					    color: #777;
					
					}
					header .sub-menu .search .material-icons{
					    height: 13px;
					    position: absolute;
					    top: 0;
					    bottom: 0;
					    /* 돋보기 오른쪽으로 가버림 */
					    right: 10px;
					    margin: auto;
					    
					}
					header .main-menu{
					    display: flex;
					    position: absolute;
					    top: 105px;
					    left: 0px;
					    right: 0px;
					}
					
					/* 메뉴 리스트 */
					header .main-menu .item{
					    display: flex;
					    width: 90%;
					    margin: 0 auto;
					    padding-top: 25px;
					    
					  
					}
					
					/* 메뉴들 */
					header .main-menu .item .item__name{
					    
					    font-size: 1.85rem;
					    position: relative;
					    width: 70%;
					    text-align: center;
					    font-weight: 500;
					}
					
					
					
					
					@media screen and (max-width: 992px) {
					   
					    /*
					        logo 한 줄
					        검색창 한 줄
					        로그인, 회원가입, 마이페이지 그대로 
					        8가지 메뉴들을 + 기능에다가
					        => 요거를 아예 다른 페이지로 호출하는 것도 나쁘지 않은듯....
					
					
					    */
					
					    /* 이를 활용하면 i-class의 크기 조절 가능 */
					    html{
					        font-size: 15px;
					        
					    }
					
					    /* flex-wrap 적용을 위해*/
					    .inner{
					        width: 100%;
					        display: flex;
					        flex-wrap: wrap;
					    }
					
					    /* logo를 100%로 해놓고 사진과 h2를 가운데로 모은다. */
					    .logo{
					       flex-basis: 100%;
					        
					    }
					
					    .logo>a{
					        margin: 0 0 0 auto;
					    }
					
					    .logo>h2{
					        margin: 0 auto 0 0;
					    }
					
					    .sub-menu{
					        width: 100%;
					    }
					
					
					    /* 검색 창 위치 조절 */
					    .search{
					        top: 150px;
					        margin: 0 auto;
					    }
					
					    /* 검색창 크기 조절 */
					    header .sub-menu .search input{
					        
					        height: 35px;
					        width: 400px;
					        border-radius: 10px;
					        margin-bottom: 5px;
					    }
					
					
					
					    .menu>li{  
					        display: none;
					    } /* 로그인, 회원가입/로그아웃, 마이페이지를 숨긴다 */
					   
					
					
					    /* 메뉴들 위치 조절 */
					    header .main-menu{
					        top: 250px;
					        
					    }
					
					     /* 메뉴 리스트 wrap을 통해 공간이 찰 때까지 가로로 인라인 방식 배치 */ 
					     header .main-menu .item{
					        flex-wrap: wrap;
					        width: 100%;
					        margin: 0 auto;
					    }
					
					    /* 메뉴들 디자인 */
					    .item__name{
					        background-color:antiquewhite;
					        border: 1px solid black;
					        flex-basis: 32.7%;
					        
					    }
					
					
					    .item__name>a{
					        font-size: 1.1rem;
					    }
					
					    
					    .m_menu{
					        text-align: center;
					    }
					
					    .m_menu>a{
					        margin: 10px;
					    }
					
					 
					}
					
					
					@media screen and (min-width:993px) and (max-width: 1200px) {
					    
					    html{
					        font-size: 8px;
					    } /* 
					        i-class는 css 적용이 어렵기에 font-size를 rem으로 하고, 이렇게 html전체에서 바꾸는 수밖에...
					    */
					
					    h2{
					        font-size: 3rem;
					
					    }
					
					    .logo{
					        padding-left: 5%;
					
					    }
					
					    .inner{
					        width: 95%;
					    }
					
					    .sub-menu{
					        width: 60%;
					       
					    }
					
					    .sub-menu .search{
					        margin-right: 3%;
					    }
					
					    .menu>li{
					        width: 50px;
					    }
					
					    header .sub-menu ul.menu li{
					        width: 100px;
					    }
					
					    header .sub-menu ul.menu li a {
					        font-size: 1.7rem;
					        font-weight: 750;
					        text-align: center;
					
					    }
					
					 
					
					    /* 메뉴 리스트 */
					    header .main-menu .item{
					        width: 95%;
					    }
					
					
					    /* 메뉴들 */
					    header .main-menu .item .item__name{
					        
					        font-size: 2.2rem;
					        position: relative;
					        width: 70%;
					        text-align: center;
					        font-weight: 500;
					    }
					
					}

	</style>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />


</head>

<body>

	<!-- class="col" 을 하면 다 하나의 열로 배치된다.-->

	<!-- header <i class="fas fa-camera-retro"></i>  -->
	<header>
		<div class="inner">
			<div class="logo">
				<a href="/">
					<i class="fas fa-camera-retro" style="font-size: 7rem;"></i>
				</a>
				<h2>동네사진작가</h2>
			</div>


			<div class="sub-menu">
				<div class="search">
					<input type="text">
					<div class="material-icons">
						<a href="https://www.naver.com/">search</a>
					</div>
					<div class="m_menu"> <!-- 로그인 시와 로그 아웃 시를 분리 -->
						<a href="/signin" class="bflogin">로그인</a>
						<a href="./regcheck.html" class="bflogin">회원가입</a> 
						<a href="/signin" class="aflogin">로그아웃</a>
						<a href="javascript:void(0)" class="aflogin">마이페이지</a> 
					</div>
				
				</div>


				<ul class="menu">
					<li>
						<a href="/signin">로그인</a>
					</li>
					<li>
						<a href="./regcheck.html">회원가입</a>
					</li>
					<li>
						<a href="javascript:void(0)">마이페이지</a>
					</li>
				</ul>


			</div>

	   


			<div>
				<ul class="main-menu">
					<li class="item">
						<div class="item__name">
							<a href="/">동네작가사진</a>
						</div>
						<div class="item__name">
							<a href="/">전문가사진</a>
						</div>
						<div class="item__name">
							<a href="/">노하우</a>
						</div>
						<div class="item__name">
							<a href="/">만남의광장</a>
						</div>
						<div class="item__name">
							<a href="/">공모전</a>
						</div>
						<div class="item__name">
							<a href="/">스카웃후기</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</header>




	<script>
		// 데스크탑 환경에서는 가린다.
		$("document").ready(function () { 

			showhide();// 처음에는 가린 상태

			$(window).resize(function() { // 창 크기 조절 시에도 적용
			   showhide();
			})
		})

		function showhide(){ //모바일, 테블릿 환경에서는 보이게. 데스크탑에서는 숨김.
			if($(window).width() > 992) {   
					$(".m_menu").hide();
			}else{
				$(".m_menu").show();
			}
		}

		function bflogin(){ // 세션값으로 유저 객체가 없다면
			$(".aflogin").hide();
			$(".bflogin").show();
		}
		
		function aflogin(){ // 세션값으로 유저 객체가 있다면
			$(".bflogin").hide();
			$(".aflogin").show();
		}


	</script>



</body>


</html>