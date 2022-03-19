<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>
<!-- 나의작품 사진 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="${path}/CSS/mypage.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/CSS/update_member.css" rel="stylesheet" type="text/css"/>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->


<style>
/* div 면적, 테두리 설정 */
	.ratio-1-1{
		border:solid 2px #dee2e6;
			width:200px;
			height:200px;
	}
	
	
</style>
</head>

<script>
	let User = "${members.mId}";
	
	function goDetail(ppId){
		
		location.href="${path}/pp_post.do?ppId="+ppId+"&plUser="+User;
		
	}

</script>


<body>
 <jsp:include page="../head_foot/new_header.jsp" flush="true"/>
   
   <div>

        <div class="container">
    
            <div class="profile">
    
                <div class="profile-image">
    
                    <img src="${path}/IMG/smtlkjFace2.PNG" alt="">
    
                </div>
    
                <div class="profile-user-settings">
    
                    <h1 class="profile-user-name">${members.mNick}</h1>
    
                                     <!-- 수정버튼(모달창) -->	
                    <a type="button" class="btn profile-edit-btn"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">수정</a>	
    					
    				<!-- 모달창 -->	
					  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">	
					    <div class="modal-dialog">	
					      <div class="modal-content">	
					        <div class="modal-header">	
					          <h5 class="modal-title" id="staticBackdropLabel">회원정보수정</h5>	
					          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>	
					        </div>	
					        <!-- 모달창 바디 -->	
					        <div class="modal-body">	
					          <div class="row">	
                				<div class="col-md-12">	
                				   <!-- 회원정보 수정 입력란 -->	
                  				   <form action="index.html" method="post">	
                  					<fieldset>	
                     				  <label for="name">닉네임</label><br>	
                     				  <span class="rule-font-color">*필수항목</span>	
				                      <input class="nickname" type="text" id="name" name="user_name">	
				                    	
				                      <label for="profile">프로필</label><br>	
				                      <div id="ratio" class="ratio-1-1">	
					                      <input type="file" id="image" name="user_profile" onchange="readURL(this);">	
					                      <img id="preview" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&w=640&h=640&c=c"/>	
									  </div><br>	
				                      <label for="name">새 비밀번호</label><br>	
				                      <span class="rule-font-color">영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.</span>	
				                      <input class="nickname" type="text" id="name" name="user_name">	
				                      	
				                      <label for="name">비밀번호 확인</label>	
				                      <input class="nickname" type="text" id="name" name="user_name">	
									</fieldset>	
                    				<fieldset>  	
                      				  <label for="bio">짧은 소개</label>	
                      				  <textarea id="bio" name="user_bio" placeholder="자신을 표현해보세요."></textarea>	
                      			    </fieldset>	
                   					<button class="btn-member-update" type="submit">회원 정보 수정</button>	
                    			  </form>	
                    			</div>	
                  			  </div>	
					        </div>	
					      </div>	
					    </div>	
					  </div>
                </div>
    
                <div class="profile-stats">
    
                    <ul>
                        <li><span class="profile-stat-count"></span> 게시물</li>
                        <li><span class="profile-stat-count"></span> 팔로워</li>
                        <li><span class="profile-stat-count"></span> 팔로잉</li>
                    </ul>
    
                </div>
    
                <div class="profile-bio">
    
                    <p><span class="profile-real-name">나는</span> 최강이다!! </p>
    
                </div>
    
            </div>
            <!-- End of profile section -->
    		
    		<div class="moveBtn" style="display: flex;  font-size: 1.4rem; border-bottom: 1px double black;">
    			<div><a href="${path}/mypage_pics.do?user=${members.mId}">작성 게시물</a></div>
    			<div style="border: 3px solid #999; border-bottom: 0; background: #999"><a href="">좋아요 누른 게시물</a></div>
    		</div>
    		<br>
        </div>
        <!-- End of container -->
    
    </div>
    
    <main>
    
        <div class="container">
    
            <div class="gallery">
    			<c:forEach var="list" items="${list}">
	                <div id="post" class="gallery-item" tabindex="0" onclick="goDetail('${list.ppId}')"> <!-- img 쪽에 onclick이 안되서... -->
	    
	                    <img src="${path}${list.ppPhoto}" class="gallery-image" alt="사진을 불러올 수 없음."
	                    	 style="cursor: pointer;" />
	    
	                    <div class="gallery-item-info">
	    
	                        <ul>
	                        	<li class="gallery-item-comments"><span class="visually-hidden">
	                        		Comments:</span><i class="fas fa-eye" aria-hidden="true"></i> ${list.ppView}</li>
	                            <li class="gallery-item-likes"><span class="visually-hidden">
	                            	Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> ${list.ppLikecnt}</li>
	                            
	                        </ul>
	    
	                    </div>
	    
	                </div>
                </c:forEach>
    
            </div>
            <!-- End of gallery -->
    
            
    
        </div>
        <!-- End of container -->
    
    </main>
    
     <jsp:include page="../head_foot/footer.jsp" flush="true"/>
    
    
</body>

<script>	
	//let postCnt = $("#post").length-1;
	
	//$("#postCount").val(postCnt);


	//모달창(짧은 소개 글자수 제한)	
	$(document).ready(function(){	
		$('#bio').on('keyup',function(){	
			if($(this).val().length>30){	
				$(this).val($(this).val().substring(0,30));	
				alert("최대 글자수는 30자입니다.");	
			}	
		});	
		
		
	});	
	
	$(function () {	
		// 웃는 이미지를 클릭했을 때	
		$('#preview').click(function (e) {	
			e.preventDefault();	
			// 숨겨진 파일열기 버튼이 클릭되게한다.	
			$('#image').click();	
		});	
	});	
	function changeValue(obj){	
		alert(obj.value);	
	}	
	
	// 프로필 파일 등록	
	function readURL(input) {	
		  if (input.files && input.files[0]) {	
		    var reader = new FileReader();	
		    reader.onload = function(e) {	
		      document.getElementById('preview').src = e.target.result;	
		    };	
		    reader.readAsDataURL(input.files[0]);	
		  } else {	
		    document.getElementById('preview').src = "";	
		  }	
		}	
	
	// div에 img 맞추기	
	window.onload = function() {	
	  var divs = document.querySelectorAll('#ratio');	
	  for (var i = 0; i < divs.length; ++i) {	
	    var div = divs[i];	
	    var divAspect = div.offsetHeight / div.offsetWidth;	
	    // div 범위를 넘어가는 이미지는 숨긴다.	
	    div.style.overflow = 'hidden';	
	    var img = div.querySelector('#preview');	
	    var imgAspect = img.height / img.width;	
	    if (imgAspect <= divAspect) {	
	      // 이미지가 div보다 납작한 경우 세로를 div에 맞추고 가로는 잘라낸다	
	      var imgWidthActual = div.offsetHeight / imgAspect;	
	      var imgWidthToBe = div.offsetHeight / divAspect;	
	      var marginLeft = -Math.round((imgWidthActual - imgWidthToBe) / 2)	
	      img.style.cssText = 'width: auto; height: 100%; margin-left: '	
	                      + marginLeft + 'px;'	
	    } else {	
	      // 이미지가 div보다 길쭉한 경우 가로를 div에 맞추고 세로를 잘라낸다	
	      img.style.cssText = 'width: 100%; height: auto; margin-left: 0;';	
	    }	
	  }	
	  	
	  /* 요게 뭔지...?
	  var btn = document.querySelector('#btnToggleOverflow');
	  btn.onclick = function() {
	    var val = divs[0].style.overflow == 'hidden' ? 'visible' : 'hidden';
	    for (var i = 0; i < divs.length; ++i)
	      divs[i].style.overflow = val;
	  };*/
	};

</script>

</html>