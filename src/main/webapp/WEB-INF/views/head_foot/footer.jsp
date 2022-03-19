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

				
				<style>
				
					/* 
					    일반 태그
					
					*/
				
					
					footer div {
					    display: block;
					}
					
					footer ol, footer ul {
					    list-style: none;
					    margin: 0;
					    padding: 0;
					}
					footer ul {
					    display: block;
					    list-style-type: disc;
					    margin-block-start: 1em;
					    margin-block-end: 1em;
					    margin-inline-start: 0px;
					    margin-inline-end: 0px;
					    padding-inline-start: 40px;
					}
					footer li {
					    display: list-item;
					    text-align: -webkit-match-parent;
					}
					footer b {
					    font-weight: bold;
					}
					
					
					footer a {
					    text-decoration: none;
					}
					
					
					user agent stylesheet
					footer em {
					    font-style: italic;
					    
					}
					
					footer address, footer caption, footer cite, footer code, footer dfn, footer em, footer strong, footer th, footer var {
					    font-weight: normal;
					    font-style: normal;
					}
					
					footer article {
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
					    font-size: 1.4rem;
					    width: 100%;
					    
					}
					
					#footerInner {
					    position: relative;
					}
					
					.clearfix{
						margin-right: 5%;
					    
					}
					
					#footerBottom {
					    padding: 30px 0 45px;
					    text-align: left;
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
					    font-size: 1rem;
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
					
					.footer-menu{
						color: #d6d6d6;
						font-weight: bold;
					}
					
					
					/* 
					    반응형 
					    
					*/
					
					@media screen and (max-width: 768px) {
					
					    footer b{
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
				
				
			</head>

			<body>
				<!-- 가로 992px 정도에서 반응형 필요  부트스트랩 .col-lg- 에 맞춰-->
				<!-- 휴대폰용으로는 400~500px 에서 Loaction 두 줄, tel/fax,  관리자 두 줄   576px .col-에 맞춰 -->


				<footer id="footer" style="display:flex; justify-content: center;">
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
					<div class="footer-menu"><br>
						<div>공지사항</div>
						<div>개인정보처리방침</div>
						<div>고객센터</div>
						<div>고객문의 <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-headset" viewBox="0 0 16 16">
							  <path d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5z"/>
							</svg>1111-1111</div>
					</div>
				</footer>
			</body>

			</html>