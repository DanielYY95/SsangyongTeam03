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
<link rel="stylesheet" href="${path}/css/contest.css"/>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
	<jsp:include page="new_header.jsp" flush="true"/>
	<div class="gall-content">
		<p class="galltitle">공모전</p>
		<ul class="gallery">
		<c:forEach var="contest" items="${ContestList}">
			<li>
				<a href="#" data-toggle="modal" data-target="#contestModal">
					<span>
						<img class="in-img" src="${path}${contest.ctPreviewPhoto}"/>
					</span>
					<span>
						<ul>
							<li class="con-title">${contest.ctTitle}</li>
							<li class="con-startdate">${contest.ctRegDate}</li>
							<li class="con-enddate">${contest.ctCloseDate}</li>
						</ul>
					</span>
				</a>
			</li>
		</ul>
	</div>
	<div class="modal fade" id="contestModal" tabindex="-1" role="dialog" aria-labelledby="contestModalTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content-sm">
      <div class="modal-header" style="border-bottom: none;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	      		<img src="${path}${contest.ctPopupContent}"/>
	      </div>
	     </div>
	     <div class="out-paging">
                <div class="in-paging">
                	<ul id="pagingList" class="page">
                    </ul>
                </div>
              </div>
	    </form>
      </div>
      <div class="modal-footer" style="border-top: none;">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
    </c:forEach>
</div>
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>