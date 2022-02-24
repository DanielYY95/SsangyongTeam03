<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./favicon.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link rel="stylesheet" href="${path}/css/new_header.css"/>
    <link rel="stylesheet" href="${path}/css/scout.css"/>
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
</head>
<script>
var recordTotal = "${recordTotal}" ; // tatalcnt
var recordCount = "${recordCount}" ; // 10page
var pageCnt = recordTotal / recordCount; // paging cnt
var pageRest = recordTotal % recordCount; // last page cnt
if(pageRest > 0 ) pageCnt+=1 ;
var pagingList = [];

var htmlStr = "";
for(var i=1 ; i <=pageCnt; i++){
	htmlStr += '<li><a style="font-size:1.5rem; color: black; text-decoration: none;" href="scout.do?startPage='+i+'">'+i+'</a></li>'
};


$(document).ready(function() {
	$("#pagingList").html(htmlStr);
})

</script>
<body>
	<head>
     	<jsp:include page="new_header.jsp" flush="true"/>
    </head>
	<div class="meet-container" style="min-height:840px;">
		<div class="center">
			<p>스카웃 후기</p>
			<div class="row">
				<div class="mt_content">
			   	    <table class="table-list-search">
			   	   		 <colgroup>
							<col style="width:10%">
							<col style="width:20%">
							<col style="width:40%">
							<col style="width:20%">
							<col style="width:10%">
						</colgroup>
			            <thead>
	                   		<tr>
		                       <th>No</th>
		                       <th>author</th>
		                       <th>Title</th>
		                       <th>Date</th>
		                       <th>views</th>
		                	</tr>
			            </thead>
			            <tbody>
			            	<c:forEach var="scout" varStatus="status" items="${ScoutList}">
			                    <tr>
			                       <td>${status.count}</td>
			                       <td>${scout.spUser}</td>
			                       <td>${scout.spTitle}</td>
			                       <td>${scout.spDate}</td>
			                       <td>${scout.spView}</td>
			                    </tr>
		                    </c:forEach>
			             </tbody>
					</table>
				</div>
				<div class="mt_foot">
					<form action="#" method="get">
						<div class="input-group">
							<div class="in-filter-block">
								<span class="filter">
									<input class="form-btn" type="button" value="최근 순"> |
									<input class="form-btn" type="button" value="조회 순"> |
									<input class="form-btn" type="button" value="베스트 순">
								</span>
							</div>
							<div class="serch-box">
								<div class="serch">
									<div class="btn_input">
										<select>
											<option>제목</option>
											<option>작성자</option>
										</select>
										<input type="text" id="input_keyword">
										<i class="fas fa-search" onclick="search();"></i>
									</div>
								</div>
							</div>
							<div class="out-paging">
								<div class="in-paging">
									<ul id="pagingList" class="page">
						           </ul>
					           </div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>