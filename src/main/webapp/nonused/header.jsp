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
				<link rel="stylesheet" href="./header.css" />

				<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
					integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"
					integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ=="
					crossorigin="anonymous" referrerpolicy="no-referrer"></script>
				<style>
					@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
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