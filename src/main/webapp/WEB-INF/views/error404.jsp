<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>error404.jsp</title>
</head>

<body>

<div style="text-align:center; width: 40%; border: 1px solid orange; margin: 20% auto;">
	<h2>죄송합니다. 해당 URL은 존재하지 않습니다.</h2>
	<h3>다시 요청 부탁드립니다.</h3>
	<h5 style="border: 1px solid red;">관리자 연락처: 1588-3082</h5>
	
	<h3>홈을 클릭하시면 홈으로 돌아갑니다. <a href="${path}/main.do">홈</a></h3>
</div>
	

</body>
</html>

