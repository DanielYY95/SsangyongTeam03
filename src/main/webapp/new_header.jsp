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
    
  
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script> <!-- 부트스트랩 JS CDN -->
<link href="Pics_Post.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> <!-- 부트스트랩  CSS CDN -->
<script src="https://kit.fontawesome.com/bacd219d28.js" crossorigin="anonymous"></script><!-- fontawesome 아이콘 사용 -->

 

    <!-- fontawesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
 

    <title>동네사진작가 </title>
    
    <style>
    
		    	
		/*
		    일반 태그
		    
		
		
		    body  폰트: font-family: 'Nanum Myeongjo', serif;
		    동네사진작가 => font-family: 'Song Myung', serif; 
		    
		*/
		
		
		html{
		    font-size: 16px;
		}
		
		/*
		    특정 태그
		
		*/
		
		
		#header{ 
		    padding: 0;
		    margin: 0;
		    font-family: 'Nanum Myeongjo', serif;
		    background-color:#f7f7f7;
		}
		
		#header a{
		    text-decoration: none;
		    color: black;
		}
		
		#header li{
		    list-style : none; 
		}
		
		/* flex 적용 모음*/
		#header .logo, #header .inner, #header .search, #header .sub-menu, #header .item, 
		#header .item div, #header .menu{
		    display: flex;
		}
		
		
		#header .inner{
		    justify-content: space-between;
		}
		
		
		/* #### 로고 쪽 */ 
		
		#header .logo, #header h2{
		    padding: 20px;
		}
		
		#header .logo{
		    display: flex;
		    align-items: center;
		    
		}
		
		#header h2{
		    font-weight: 600;
		    font-size: 3rem;
		    font-family: 'Song Myung', serif; 
		}
		
		/* ### 검색창 */ 
		
		#header .search input{
		    width: 200px;
		    border-radius: 10px;
		}
		
		#header .sub-menu{
		    align-items: center;
		}
		
		
		/* ### 로그인, 회원가입, 마이페이지*/
		
		#header .menu{
		    font-size: 1.2rem;
		    
		}
		
		#header .menu a{
		    padding:  15px;
		    
		}
		
		/* ### 동네작가사진, 전문가 사진, 노하우 등.....*/
		
		/* 메뉴 리스트 */
		#header .item{
		    width: 90%;
		    margin: 0 auto;
		    
		}
		
		/* 메뉴들 */
		#header .item div{
		    font-size: 1.85rem;
		    width: 70%;
		    font-weight: 500;
		    
		
		}
		
		#header .item a{
		    margin: 0 auto;
		}
		
		
		
		    	
		    
    
    </style>
    
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
			 <!-- 수정_김효은 / 로그인 세션 유지를 보여주는 텍스트 -->
                <c:if test="${not empty members.mId}">
  			${members.mId} 로그인중<br>
  		</c:if>
                    <ul class="menu">
                        <li>
                            <a href="/springweb/web.do?method=login">로그인</a>
                        </li>|
                        <li>
                            <a href="reg.do">회원가입</a>
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
