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
    <link href="./mypage.css" rel="stylesheet" type="text/css"/>
    <link href="./new_header.css" rel="stylesheet" type="text/css"/>
    <link href="./update_member.css" rel="stylesheet" type="text/css"/>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- jquery  -->
<script type="text/javascript" src="../a00_com/jquery-3.6.0.js"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
/* div 면적, 테두리 설정 */
.ratio-1-1{
	border:solid 2px #dee2e6;
	width:80px;
	height:80px;
}
</style>
</head>
<body>
<%@ include file="./new_header.jsp" %>
    <div>

        <div class="container">
    
            <div class="profile">
    
                <div class="profile-image">
    
                    <img src="../images/smtlkjFace2.PNG" alt="">
    
                </div>
    
                <div class="profile-user-settings">
    
                    <h1 class="profile-user-name">럭키짱!</h1>
    				
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
                        <li><span class="profile-stat-count">9</span> 게시물</li>
                        <li><span class="profile-stat-count">0</span> 팔로워</li>
                        <li><span class="profile-stat-count">0</span> 팔로잉</li>
                    </ul>
    
                </div>
    
                <div class="profile-bio">
    
                    <p><span class="profile-real-name">나는</span> 최강이다!! </p>
    
                </div>
    
            </div>
            <!-- End of profile section -->
    
        </div>
        <!-- End of container -->
    
    </div>
    <div class="album py1-5 bg-light">
        <div class="container">
         <div>
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <div class="col">
              <div class="card shadow-sm">
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" 
                    aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <title>Placeholder</title>
                    <image href="../images/Mountain.jpg" width="100%" height="100%"/>
                </svg>
                <div class="card-body">
                    <button type="button" class="btn btn-sm btn-outline-secondary">
                        <!-- 좋아요(하트 모양) -->
                        <svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" 
                        stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                            <path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
                        </svg>
                        <!-- 좋아요 개수 -->
                        <span class="count">1</span>
                    </button>
                    <!-- 해당 게시물 댓글페이지로 바로 이동(a태그) -->
                    <a type="button" class="btn btn-sm btn-outline-secondary" href="#">
                        <!-- 댓글(댓글 모양) -->
                        <svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                            <path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
                        </svg>
                        <!-- 댓글 개수 -->
                        <span class="count">1</span>
                    </a>
                </div>
              </div>
            </div>
            <div class="col">
                <div class="card shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" 
                  aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                      <title>Placeholder</title>
                      <image href="../images/Mountain.jpg" width="100%" height="100%"/>
                  </svg>
                  <div class="card-body">
                      <button type="button" class="btn btn-sm btn-outline-secondary">
                          <!-- 좋아요(하트 모양) -->
                          <svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" 
                          stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
                          </svg>
                          <!-- 좋아요 개수 -->
                          <span class="count">1</span>
                      </button>
                      <!-- 해당 게시물 댓글페이지로 바로 이동(a태그) -->
                      <a type="button" class="btn btn-sm btn-outline-secondary" href="#">
                          <!-- 댓글(댓글 모양) -->
                          <svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
                          </svg>
                          <!-- 댓글 개수 -->
                          <span class="count">1</span>
                      </a>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" 
                  aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                      <title>Placeholder</title>
                      <image href="../images/Mountain.jpg" width="100%" height="100%"/>
                  </svg>
                  <div class="card-body">
                      <button type="button" class="btn btn-sm btn-outline-secondary">
                          <!-- 좋아요(하트 모양) -->
                          <svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" 
                          stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
                          </svg>
                          <!-- 좋아요 개수 -->
                          <span class="count">1</span>
                      </button>
                      <!-- 해당 게시물 댓글페이지로 바로 이동(a태그) -->
                      <a type="button" class="btn btn-sm btn-outline-secondary" href="#">
                          <!-- 댓글(댓글 모양) -->
                          <svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
                          </svg>
                          <!-- 댓글 개수 -->
                          <span class="count">1</span>
                      </a>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" 
                  aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                      <title>Placeholder</title>
                      <image href="../images/Mountain.jpg" width="100%" height="100%"/>
                  </svg>
                  <div class="card-body">
                      <button type="button" class="btn btn-sm btn-outline-secondary">
                          <!-- 좋아요(하트 모양) -->
                          <svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" 
                          stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
                          </svg>
                          <!-- 좋아요 개수 -->
                          <span class="count">1</span>
                      </button>
                      <!-- 해당 게시물 댓글페이지로 바로 이동(a태그) -->
                      <a type="button" class="btn btn-sm btn-outline-secondary" href="#">
                          <!-- 댓글(댓글 모양) -->
                          <svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
                          </svg>
                          <!-- 댓글 개수 -->
                          <span class="count">1</span>
                      </a>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" 
                  aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                      <title>Placeholder</title>
                      <image href="../images/Mountain.jpg" width="100%" height="100%"/>
                  </svg>
                  <div class="card-body">
                      <button type="button" class="btn btn-sm btn-outline-secondary">
                          <!-- 좋아요(하트 모양) -->
                          <svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" 
                          stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
                          </svg>
                          <!-- 좋아요 개수 -->
                          <span class="count">1</span>
                      </button>
                      <!-- 해당 게시물 댓글페이지로 바로 이동(a태그) -->
                      <a type="button" class="btn btn-sm btn-outline-secondary" href="#">
                          <!-- 댓글(댓글 모양) -->
                          <svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
                          </svg>
                          <!-- 댓글 개수 -->
                          <span class="count">1</span>
                      </a>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" 
                  aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                      <title>Placeholder</title>
                      <image href="../images/Mountain.jpg" width="100%" height="100%"/>
                  </svg>
                  <div class="card-body">
                      <button type="button" class="btn btn-sm btn-outline-secondary">
                          <!-- 좋아요(하트 모양) -->
                          <svg class="icon icon--stroke" aria-label="좋아요" width="24" height="24" fill="currentColor" 
                          stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
                          </svg>
                          <!-- 좋아요 개수 -->
                          <span class="count">1</span>
                      </button>
                      <!-- 해당 게시물 댓글페이지로 바로 이동(a태그) -->
                      <a type="button" class="btn btn-sm btn-outline-secondary" href="#">
                          <!-- 댓글(댓글 모양) -->
                          <svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                              <path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
                          </svg>
                          <!-- 댓글 개수 -->
                          <span class="count">1</span>
                      </a>
                  </div>
                </div>
              </div>
          </div>
        </div>
        </div>
    </div>
</body>
<script>
// 모달창(짧은 소개 글자수 제한)
$(document).ready(function(){
	$('#bio').on('keyup',function(){
		if($(this).val().length>30){
			$(this).val($(this).val().substring(0,30));
			alert("최대 글자수는 30자입니다.");
		}
	});
});

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
  
  var btn = document.querySelector('#btnToggleOverflow');
  btn.onclick = function() {
    var val = divs[0].style.overflow == 'hidden' ? 'visible' : 'hidden';
    for (var i = 0; i < divs.length; ++i)
      divs[i].style.overflow = val;
  };
};

</script>
</html>