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
				<link rel="stylesheet" href="./footer.css" />
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