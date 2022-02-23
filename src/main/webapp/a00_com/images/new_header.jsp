<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<c:set var="path" value="${pageContext.request.contextPath }" />
			<fmt:requestEncoding value="utf-8" />
			<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
    </style>



    <link rel="stylesheet" href="./new_header.css" />



  

<link href="Pics_Post.css" rel="stylesheet" />

    <script src="https://kit.fontawesome.com/bacd219d28.js" crossorigin="anonymous"></script><!-- fontawesome 아이콘 사용 -->



    <!-- fontawesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />


    <title>동네사진작가 </title>
</head>

<body>

    <!-- class="col" 을 하면 다 하나의 열로 배치된다.-->

    <!-- header <i class="fas fa-camera-retro"></i>  -->

    <div id="header">
        <div class="inner">
            <div class="logo">
                <a href="/">
                    <i class="fas fa-camera-retro" style="font-size: 7rem;"></i>
                </a>
                <h2>동네사진작가</h2>
            </div>


            <div class="sub-menu">
                <div class="top-menu">
                    <div class="search">
                        <div><input type="text"></div>
                        <div class="material-icons">
                            <a href="https://www.naver.com/">search</a>
                        </div>
                    </div>
                </div>

                <div class="user">
                    <ul class="menu">
                        <li>
                            <a href="/signin">로그인</a>
                        </li>|
                        <li>
                            <a href="./regcheck.html">회원가입</a>
                        </li>|
                        <li>
                            <a href="javascript:void(0)">마이페이지</a>
                        </li>
                    </ul>

                </div>
            </div>

        </div><br>


        <div class="item">
            <div>
                <a href="/">동네작가사진</a>
            </div>
            <div>
                <a href="/">전문가사진</a>
            </div>
            <div>
                <a href="/">노하우</a>
            </div>
            <div>
                <a href="/">만남의광장</a>
            </div>
            <div>
                <a href="/">공모전</a>
            </div>
            <div>
                <a href="/">스카웃후기</a>
            </div>
        </div>
        <hr>


    </div>

</body>

			</html> 