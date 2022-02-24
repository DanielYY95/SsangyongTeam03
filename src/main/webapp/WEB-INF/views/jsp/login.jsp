<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./favicon.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
     integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js" 
     integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script> 
  
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
        </style>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
   <!-- 부트스트랩 css -->
    <link rel="stylesheet" href="../css/bootstrap.css">
   <!-- 부트스트랩 js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    
	<!-- css 파일 -->
    <link rel="stylesheet" href="${path}/css/login.css">
 
    <title>동네사진작가 </title>
    
<script type="text/javascript">
   function loginchk(){
if(document.signform.mId.value==""){
	alert("아이디를 입력해주세요.");
	// 값이 들어가있지 않으면 false로 리턴 
	document.signform.mId.focus();
	return false;
}else if (document.signform.mPass.value==""){
	alert("비밀번호를 입력해주세요.");
	document.signform.mPass.focus();
	return false;
}else{
	return true;
//	location href="/WEB-INF/views/jsp/main.jsp";
	// 유효성 검증 후 값이 전부 들어가 있으면 main으로 이동 

}
}   
$(document).ready(function(){
	var loginMsg="${loginMsg}";
	if(loginMsg!=""){
		alert(loginMsg)
	}
	// login 후 session이 있을 때..
	var hasSession="${members.mName}";
	console.log("${members.mId}");
	console.log("세션이름:"+hasSession);
	console.log(hasSession);
	
	
	<%-- 
	
	--%>

});

</script>

</head>


<body>
<!-- 헤더 -->
   <header>
     <jsp:include page="new_header.jsp" flush="true"/>
     </header>
     
       <!-- 로그인 화면 -->
       <div class="wrap">
	<div class="container">
        <div class="logbox">
        <div class="log1">
                <h1 class="logtext1">동네 사진작가로 <br>데뷔하세요!</h1>
                <p class="logtext2">진솔한 작품으로 당신의 이야기를<br>세상에 선보이세요.</p>
                <!-- <p style="font-size:20px; color:black;">동네 사진작가로 데뷔하세요!</p>
                <p style="font-size:14px;">진솔한 사진으로 당신의 이야기를 <br> 세상에 선보이세요.</p> -->
        </div>
      <!-- Login Form -->
      <div class="log2">
      <form method="post" 
     	    action="${path }/web.do?method=session" 
            id="form__wrap" 
            name="signform" 
            class="signin">
        <input type="text" class="userlog" id="mId" name="mId" placeholder="user id">
        <input type="password" class="userlog" id="mPass" name="mPass" placeholder="password"><br>
          <input type="button" class="btn1" id="btn_login" value="로그인" onclick="retrun loginchk()">
        <p class="regbtn" href="">
        <i class="fas fa-arrow-right" style="color:rgb(63, 58, 58);"></i>
       아직 가입 전이신가요?
      </p>
      </form>
      <script>
  			$("#btn_login").click(function(){ 
				$("#form__wrap").submit();
			});
        </script>
    </div>
    </div>
    </div>
    </div>
<!--   <script type="text/javascript"> 
     function loginchk(){
    	if(document.signform.mId.value==""){
    		alert("아이디를 입력해주세요.");
    		// 값이 들어가있지 않으면 false로 리턴 
    		document.signform.mId.focus();
    		return false;
    	}else if (document.signform.mPass.value==""){
    		alert("비밀번호를 입력해주세요.");
    		document.signform.mPass.focus();
    		return false;
    	}else{
    		return true;
    		location.href="WEB-INF/views/jsp/main.jsp";
    	//	location href="/WEB-INF/views/jsp/main.jsp";
    		// 유효성 검증 후 값이 전부 들어가 있으면 main으로 이동 
    	
    	}
    }  
  $('#btn_login').click(function(){
    	var userid = $('#mId').val();
    	var userpw = $('#mPass').val();
    	$.ajax({
    		type:"post",
    		url:"login.do",
    		data:{mId:mId, mPass:mPass},
    		success:function(data){
    			if(data == "false")
    				alert('잘못된 아이디이거나, 비밀번호가 틀렸습니다. ');
    		}else{
    			location.href="./main.do";
    		}
    	})
    });
    
  </script> -->
    
<!-- 푸터 --> 
	<!--  <script type="text/javascript"> 
	if(mId.value=="" && mPass.value==""){ // session값이 없을 때..
		alert("로그인이 필요합니다!");
		$("#btn_login").click();
	}
	</script> -->
		<footer>
		 <jsp:include page="footer.jsp" flush="true"/>
		</footer>
		
</body>

</html>