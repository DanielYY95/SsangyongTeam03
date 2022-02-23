<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css" integrity="sha512-6c4nX2tn5KbzeBJo9Ywpa0Gkt+mzCzJBrE1RB6fmpcsoN+b/w/euwIMuQKNyUoU/nToKN3a8SgNOtPrbW12fug==" crossorigin="anonymous" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/new_header.css"/>
<link rel="stylesheet" href="${path}/css/meetin.css"/>
</head>
<body>
	<head>
     	<jsp:include page="new_header.jsp" flush="true"/>
    </head>
    <div class="container">
    	<div class="content-block">
    		<p class="title">만남의 광장</p>
		    <div class="out-block">
		    	<div class="in-block">
		    		<span>제목</span>
		    		<span>
			    	<img src="./img/profile.jpg"/>
			    	</span>
			    	<div class="write-block">
				    	<span>
				    		작성자
				    	</span>
				    	<div class="view">
			    			조회수 : <span>조회수</span>
			    		</div>
			    		<div class="date">
			    			등록일 : <span>등록일</span>
			    		</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="out-block">
		    	<div class="in-block">
		    		<hr style="width:1100px">
		    		<span>내용</span>
		    	</div>
		    </div>
		</div>
		<button class="prevbtn" type="button">< prev</button>
		<button class="nextbtn" type="button">next ></button>
		<button class="commentbtn" type="button">댓글:</button>
		<button class="goodcntbtn" type="button">좋아요수:</button>
		<button class="goodbtn" type="button">좋아요</button>
		<button class="reportbtn" type="button">신고</button>
		<button class="listbtn" type="button">글목록</button>
		<jsp:include page="commentList.jsp" flush="true"/>
	</div>
</body>
</html>