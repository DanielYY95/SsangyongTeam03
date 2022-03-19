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
    	@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
    	
		    	
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
		    font-size: 1.2rem;
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
		    margin-right: 3%;
		}
		
		
		/* ### 로그인, 회원가입, 마이페이지*/
		
		#header .menu{
		    font-size: 1.5rem;
		    margin: 0;
		    
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

    <!-- 여기서 멤버 세션에 따라 이 페이지에서 사용할 값을 분류 -->
    <c:set var="loginOutLink" value="${members.mId==null? '/loginFrm.do':'/logout.do'}" />
	<c:set var="loginOut" value="${members.mId==null? '로그인':'로그아웃' }" />
	
	<c:set var="regMypageLink" value="${members.mId==null? '/reg.do':'/mypage_pics.do?user='}" />
	<c:set var="regMypage" value="${members.mId==null? '회원가입':'마이페이지' }" />
	<c:set var="user" value="${members.mId==null? '':members.mId }" />
						
    
    
    <div id="header">
        <div class="inner">
            <div class="logo">
                <a href="${path}/main.do">
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
   					<!-- 로그인 중입니다.  -->
   					 <c:if test="${not empty members.mId}">
	   					<div style="position:absolute; top: 20px; font-size: 1.3rem;">
	   						안녕하세요, <span style="font-weight: 900">${members.mNick}</span>님
	   					</div>
   					</c:if>
   					
                    <ul class="menu">
                    
                   
                    	
              		<!-- 로그인, 회원가입 // 로그아웃, 마이페이지 -->
                       <li>
                       		<a href="${path}${loginOutLink}">${loginOut}</a>
                       </li>|
                        <li>
                        	<a href="${path}${regMypageLink}${user}">${regMypage}</a>
                       	</li>
                    </ul>

                </div>
            </div>

        </div>


        <div class="item">
            <div>
                <a href="/">동네작가사진</a>
            </div>
            <div>
                <a href="${path}/pp_list.do">전문가사진</a>
            </div>
            <div>
                <a href="">노하우</a>
            </div>
            <div>
                <a href="">만남의광장</a>
            </div>
            <div>
                <a href="${path}/contest.do?method=list">공모전</a>
            </div>
            <div>
                <a href="${path}/scout.do">스카웃후기</a>
            </div>
        </div>
        <hr>
    
    
    </div>


</body>

			</html>