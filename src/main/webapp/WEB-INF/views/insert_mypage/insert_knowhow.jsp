<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>동네사진작가</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style>
	.knowhow-ins-title{
		border:1px solid #808080;
		border-radius:10px;
		width:30%;
		height:40px;
		margin-bottom:1%;
	}
	.btn-ins{
		width:7%;
		height:35px;
		background-color:#555555;	
		color:white;
	}
	.panel{
		margin-bottom:10px;
	}

</style>
</head>

<body>
	
    <jsp:include page="../head_foot/new_header.jsp" flush="true"/>
    														<!-- kpContent=<p>ㄹㄹ%2Fp> 로 되어있다.   -->
	<div class="insert-knowhow-container"> <!-- insertKP.do?kpUser=asd456&kpTitle=41&kpContent=%3Cp%3E%E3%84%B9%E3%84%B9%3C%2Fp%3E&files=  -->
		<form class="container" action="${path}/scout_insert.do">
			<input type="hidden" name="spUser" value="${members.mId}" /> <!-- 이렇게해서 form 제출하는 것도 나쁘진 않네 -->
			<!-- 제목 입력란 -->
			<div>
				<input class="knowhow-ins-title" type="text" name="spTitle" placeholder="제목을 입력해주세요."/> 
			</div>
			<!-- 내용 입력란 -->
			<div>
				<textarea class="summernote" name="spContent"></textarea>  
			</div>
			<!-- 등록 버튼 -->
			<div class="ins-knowhow-button">
				<input type="submit" class="btn-ins" style="float:right;"
					value="등록" id="regBtn"/>
			</div>
		</form>
	</div><br><br>

    <jsp:include page="../head_foot/footer.jsp" flush="true"/>


</body>
<script>
	$('.summernote').summernote({
		  height: 350,
		  lang: "ko-KR"
		});
	
	
	$('#regBtn').click(function(){
		if($("[name=kpTitle]").val().trim() == ''){
			alert("제목을 입력해주세요!");
			return;
		}else if($("[name=kpContent]").val().trim() == ''){
			alert("내용을 입력해주세요!");
			return;
		}else{
			$("form").submit();
		}
		
	})
	
</script>
</html>