<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./favicon.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="./css/new_header.css"/>
    <link rel="stylesheet" href="./css/meet.css"/>
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
<body>
	<head>
     	<jsp:include page="new_header.jsp" flush="true"/>
    </head>
	<div class="meet-container">
		<div class="center">
			<p>만남의 광장</p>
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
		                       <th>auther</th>
		                       <th>Content</th>
		                       <th>Date</th>
		                       <th>views</th>
		                	</tr>
			            </thead>
			            <tbody>
		                    <tr>
		                       <td>Sample</td>
		                       <td>Filter</td>
		                       <td>12-11-2011 11:11</td>
		                       <td>OK</td>
		                       <td>123</td>
		                    </tr>
		                    <tr>
		                       <td>Try</td>
		                       <td>It</td>
		                       <td>11-20-2013 08:56</td>
		                       <td>It</td>
		                       <td>Works</td>
		                    </tr>
		                    <tr>
		                       <td>§</td>
		                       <td>$</td>
		                       <td>%</td>
		                       <td>&</td>
		                       <td>/</td>
		                    </tr>
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
									<ul class="page">
							             <li class="disabled"><a href="#">«</a></li>
							             <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
							             <li><a href="#">2</a></li>
							             <li><a href="#">3</a></li>
							             <li><a href="#">4</a></li>
							             <li><a href="#">5</a></li>
							             <li><a href="#">»</a></li>
						           </ul>

					           </div>
				           </div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>