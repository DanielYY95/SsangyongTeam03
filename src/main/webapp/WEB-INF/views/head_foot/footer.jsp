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
				<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
				<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
				<script src="${path}/a00_com/jquery.min.js"></script>
				<script src="${path}/a00_com/popper.min.js"></script>
				<script src="${path}/a00_com/bootstrap.min.js"></script>
				<script src="${path}/a00_com/jquery-ui.js"></script>
				<script src="https://unpkg.com/vue/dist/vue.js" type="text/javascript"></script>
				<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
					type="text/javascript"></script>

				<title>HTML5 BASIC(타이틀)</title>
				
				<style>
					/* 
					    일반 태그
					
					*/
					
					*{
					    padding: 0;
					    margin: 0;
					}
					
					html{
					    font-size: 10px; 
					}
					
					div {
					    display: block;
					}
					
					ol, ul {
					    list-style: none;
					    margin: 0;
					    padding: 0;
					}
					ul {
					    display: block;
					    list-style-type: disc;
					    margin-block-start: 1em;
					    margin-block-end: 1em;
					    margin-inline-start: 0px;
					    margin-inline-end: 0px;
					    padding-inline-start: 40px;
					}
					li {
					    display: list-item;
					    text-align: -webkit-match-parent;
					}
					b {
					    font-weight: bold;
					}
					
					
					a {
					    text-decoration: none;
					}
					
					
					user agent stylesheet
					em {
					    font-style: italic;
					}
					
					address, caption, cite, code, dfn, em, strong, th, var {
					    font-weight: normal;
					    font-style: normal;
					}
					
					article {
					    display: block;
					}
					
					
					
					
					/* 
					    특정 태그
					
					*/
					
					
					.clearfix:after {
					    clear: both;
					    display: block;
					    content: "";
					}
					
					
					#footer{background-color: #3c3c3c}
					
					footer {
					    display: block;
					    font-size: 1.6rem;
					    width: 100%;
					    
					}
					
					#footerInner {
					    position: relative;
					}
					
					.clearfix{
					    width: 80%;
					    margin: 0% 15% 0% 30%;
					}
					
					#footerBottom {
					    padding: 30px 0 45px;
					    text-align: left;
					}
					.area-box {
					    margin: 0 5.2%;
					}
					.footer-left-con {
					    float: left;
					}
					.foot-info-menu-m {
					    display: none;
					}
					
					
					
					.footer-address p {
					    color: #999;
					    letter-spacing: -0.15px;
					    line-height: 1.2;
					    -ms-word-break: keep-all;
					    word-break: keep-all;
					    padding-bottom: 13px;
					}
					
					.footer-address p b {
					    color: #d6d6d6;
					}
					.footer-address a {
					    color: inherit;
					}
					
					
					.footer-address span:not(.foot-info-menu) {
					    display: inline-block;
					}
					
					
					.footer-copyright {
					    padding-top: 25px;
					    font-size: 13px;
					    font-weight: 400;
					    letter-spacing: 0.2px;
					    color: #999;
					}
					.footer-address a {
					    color: inherit;
					}
					.footer-address span:not(.foot-info-menu) {
					    display: inline-block;
					}
					.footer-copyright .fc-white {
					    color: #ccc;
					}
					.footer-copyright-m {
					    display: none;
					}
					
					
					
					
					/* 
					    반응형 
					    
					*/
					
					@media screen and (max-width: 768px) {
					
					    b{
					        font-size: 2rem;
					        
					    }
					
					    .clearfix{
					        width: 100%;
					        margin: 0 auto;
					        white-space: normal;
					    }
					
					
					    .footer-left-con{
					        width: 100%;
					        margin: 0 auto;
					    }
					
					    
					    .footer-address{
					        width: 80%;
					        margin: 0 auto;
					
					    }
					
					}
					
					
					@media screen and (min-width:769px) and (max-width: 992px) {
					
					    .clearfix{
					        width: 100%;
					        margin: 0% 10% 0% 12%;
					    }
					
					}

	</style>
	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<body>
	<!-- 가로 992px 정도에서 반응형 필요  부트스트랩 .col-lg- 에 맞춰-->
	<!-- 휴대폰용으로는 400~500px 에서 Loaction 두 줄, tel/fax,  관리자 두 줄   576px .col-에 맞춰 -->


	<footer id="footer">
		<div id="footerInner" class="clearfix">
			<article id="footerBottom">
				<div class="area-box clearfix">
					<article class="footer-left-con">
						<div class="footer-address">
							<p>
								<b>Location.</b>
								<span>132, Teheran-ro, Gangnam-gu, <span>Seoul, Republic of
										Korea</span></span><br>
								<span class="foot-info-menu">
									<em class="fc-white"> </em><b>TEL. </b><span>+82 1-2345-6789</span><br>
									<em class="fc-white"> </em><b>FAX. </b><span>+82 1-2345-6789</span><br>
									<em class="fc-white"> </em><b>EMAIL. </b><a
										href="mailto:hanga9030@naver.com">hanga09030@naver.com</a>
								</span>
							</p>
							<div class="footer-copyright"><span class="fc-white">관리자</span></a><em
									class="fc-white">
								</em>| Copyright (C) 2022 <em class="fc-red">LOCAL PHOTO</em><em
									class="fc-white">
								</em>All rights reserved.</div>
						</div>
					</article>

				</div>
			</article>
		</div>
	</footer>
</body>

</html>