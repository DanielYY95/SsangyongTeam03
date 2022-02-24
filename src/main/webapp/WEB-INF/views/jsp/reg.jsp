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
    <link rel="stylesheet" href="/css/bootstrap.css">
   <!-- 부트스트랩 js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <script type="text/javascript" src="/js/bootstrap.js"></script>
   <link rel="stylesheet" href="${path }/css/reg.css">
    <link rel="stylesheet" href="../css/footer.css">
	
    <title>동네사진작가 </title>
</head>

 <script type="text/javascript">
function regchk(){
	// 입력 유효성 검사 
	if(document.regform.mName.value==""){
		alert("이름을 입력해주세요.");
		document.regform.mName.focus();
		return false;
	}else if (document.regform.mBirth.value==""){
		alert("생년월일을 입력해주세요.");
		document.regform.mBirth.focus();
		return false;
	}else if (document.regform.mId.value==""){
		alert("아이디를 입력해주세요.");
		document.regform.mId.focus();
		return false;
	}else if (document.regform.mPass.value==""){
		alert("비밀번호를 입력해주세요.");
		document.regform.m_pass.focus();
		return false;
	}else if (document.regform.mPass2.value==""){
		alert("비밀번호를 다시 입력해주세요.")
		;
		document.regform.mPass2.focus();
		return false;
	}else if (document.regform.mPass.value!=
		document.regform.mPass2.value){
		alert("비밀번호가 일치하지 않습니다. ");
		document.regform.mPass2.focus();
		return false;
	}else if (document.regform.mEmail.value==""){
		alert("e-mail을 입력해주세요.");
		document.regform.mEmail.focus();
		return false;
	}
	else if (document.regform.mNick.value==""){
		alert("닉네임을 입력해주세요.");
		document.regform.mNick.focus();
		return false;
	}else{
		return true;
		
	}
}


    </script>
</head>
<body>
<!-- 헤더 -->
   <header>
     <jsp:include page="new_header.jsp" flush="true"/>
     </header>
     
      <!-- 회원가입 -->
    <div class="container">
        <div class="regbox">
            <div class="reg">
                <form action="${path }/reg.do" class="regin" method="post" name="regform" onsubmit="return regchk()">
                <input type="text" class="userReg" name="mName" maxlength="12" placeholder="이름을 입력해주세요.">
                <input type="text" class="userReg" name="mBirth" placeholder="생년월일 ex)1994-01-01">
                <input type="checkbox" name="mGender" id="chk1" value="woman"/>여성
               
                <input type="checkbox" name="mGender" id="chk2" value="man"/>남성
             
                <input type="text" class="userReg" name="mID" placeholder="아이디를 입력해주세요.">
                <input type="button" class="btnid" value="중복확인" >
                <input type="password" class="userReg" name="mPass" placeholder="비밀번호를 입력해주세요.">
                <input type="password" class="userReg" name="mPass2" placeholder="비밀번호를 입력해주세요.">
              <!--  <input type="button" class="btnid" value="비밀번호확인" >  --> 
                <input type="text" class="userReg" name="mMail" placeholder="e-mail 입력해주세요.">
                <input type="text" class="userReg" name="mNick" placeholder="닉네임을 입력해주세요.">
                <input type="button" class="btnid" value="중복확인" ><br>
                <input type="submit" class="btn1" value="회 원 가 입" >
                </form>
            </div>
        </div>

    </div>
   
<!-- 푸터 --> 
		<footer>
		 <jsp:include page="footer.jsp" flush="true"/>
		</footer>
		
</body>


</html>