<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isErrorPage="true" %>
<html>
<head>
	<title>error500.jsp</title>
</head>
<body>

<div style="width: 70%; margin: 10% auto;">
	<h1>예외가 발생했습니다.</h1>
		발생한 예외 : <%= exception.getClass().getName() %><br>
		예외 메시지 : <%= exception.getMessage() %><br>
		
		<ol>
		<c:forEach items="<%= exception.getStackTrace() %>" var="i">
			<li>${i.toString()}</li>
		</c:forEach>
		
		<li></li>
		
	</ol>
	
	<h3>홈을 클릭하시면 홈으로 돌아갑니다. <a href="${path}/main.do">홈</a></h3>
	<h3>에러 관련 검색 <a href="https://www.google.com/search?q=
		<%= exception.getClass().getName() %>">이동</a></h3>
	
</div>
</body>
</html>

