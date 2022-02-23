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
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> <!-- 부트스트랩 JS CDN -->
        
    <link href="${path}/CSS/Pics_Post.css" rel="stylesheet" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> <!-- 부트스트랩  CSS CDN -->
    <script src="https://kit.fontawesome.com/bacd219d28.js" crossorigin="anonymous"></script><!-- fontawesome 아이콘 사용 -->
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script> <!-- Vue 라이브러리 -->
    <!-- toastr css 라이브러리 -->
    <link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
    <!-- toastr js 라이브러리 -->
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> <!-- 출처: https://nowonbun.tistory.com/565-->



    <style>
   	

    </style>
    

    </head>

<body >
      <jsp:include page="../head_foot/new_header.jsp" flush="true"/>
      
      <% session.setAttribute("User", "asd456"); // 로그인한 아이디

      %>

    <div id="Post_Container" >
        <div>제목: ${post.ppTitle}</div>
        <div class="Post_Head">
            <div>작성자: ${post.ppUser}</div>
            <div style="display: flex;"> 
                <div>조회수: ${post.ppView}</div>&nbsp;&nbsp;
                <div>등록일: <fmt:formatDate pattern="yyyy-MM-dd" value="${post.ppDate}"/></div>
            </div>
        </div><hr><br>

        <img class="Post_Img" style="height: 400px; object-fit:cover;" src="${path}${post.ppPhoto}"><br>

        <div>내용: ${post.ppContent}</div><br>

        <div>지역명: ${post.ppPlace} </div><br>

        <div>
            <button class="btn btn-outline-secondary" style="border-radius: 15px;">태그</button>
            <a href="#">태그1</a>,
            <a href="#">태그2</a>
        </div><br>

        <div class="Post_Bottom">
            <div>
                <button class="btn btn-success">댓글: <span class="commentCnt">${commentCnt}</span></button>
  				<c:set var="likeColor" value="${hasLike ==1? 'red':'black'}" /> <!-- 조건에 따라 색깔 변경 -->
               	<button id="likeBtn" class="btn btn-warning" style="color: ${likeColor}">좋아요: <span class="likeCnt">${likeCnt}</span></button>
           
            </div>



            <div>
                <button id="repBtn"  class="btn btn-danger" data-toggle="modal" data-target="#reportModal">신고</button>
                <button id="mainBtn" class="btn btn-info">글 목록</button>
            </div>


        </div>
        

    </div><br>

	<!-- 신고창  -->
    <div class="modal fade " id="reportModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered"> <!-- modal-dialog-centered 모달창을 웹브라우저 가운데로-->
            <div class="modal-content">
                <div class="modal-header" > 
                    <h3 class="modal-title" id="myModalLabel" style="margin: 0 auto;">신고하기</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> <!-- 닫기도 안 먹히네.... -->
                </div>
            
                <div class="modal-body " style="margin: 0 auto; line-height: 30px;" >
                    <div>
                        <h5>신고자: </h5>
                        <h5>제목: </h5>
                    </div><br>
                    <label><input type="radio" name="repReason" value="1" checked="checked"/>&nbsp;광고성 게시물</label><br> <!-- 기본값 지정 -->
                    <label><input type="radio" name="repReason" value="2"/>&nbsp;중복 게시물</label><br>
                    <label><input type="radio" name="repReason" value="3"/>&nbsp;내용에 맞지않는 게시물</label><br>
                    <label><input type="radio" name="repReason" value="4"/>&nbsp;음란성 게시물</label><br>
                    <label><input type="radio" name="repReason" value="5"/>&nbsp;혐오 게시물</label><br>
                    <label><input type="radio" name="repReason" value="6"/>&nbsp;기타 신고 사유(직접 입력 30자까지)</label><br>
                    &nbsp;&nbsp;&nbsp;<input class="etcReason" size="30" />



                </div>
                <div class="modal-footer">
                     <!-- 닫기도 안 먹히네....
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                     -->
                    <button type="button" class="btn btn-primary" style="text-align: center;">신고하기</button>
                </div>
            </div>
        </div>
    </div>

    
	<!-- 댓글 -->
    <div id="Comments_Container"> 

        <div class="com-reg" style="display: flex; justify-content: space-between; width: 80%; margin: 0 auto;">
            <div class="L_Arrow"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="150" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
              </svg><span style="padding-left: 20px;">이전 글</span></div>

            <div class="mb-2">
                <br>
                <label for="commentsText" class="form-label">댓글 내용</label>
                <textarea id="commentsText" class="form-control" rows="3"></textarea>
                <span class="commentsLength">0/50자</span>
                <button id="commentsBtn" class="btn btn-primary">등록</button>
            </div>
            <div class="R_Arrow"><span style="padding-right:20px;">다음 글</span><svg xmlns="http://www.w3.org/2000/svg" width="50" height="150" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
              </svg></div>

        </div>


        <!-- 가람님으로부터 가져온 것. container는 가져오지 않았음. -->
        <div class="com-content-block" style="width: 40%; margin: 0 auto;">
    		<p class="title">댓글</p>
    		
    		<c:forEach var="comment" items="${clist}">
    			<div class="com-out-block">
			    	<div class="com-in-block">
				    	<div class="com-write-block" style="border: 1px solid black; background-color: silver;">
					    	<span class="fw-bold">
					    		${comment.pcUser}
					    	</span><br>
					    	<div class="com-view" style="padding: 5px;">
				    			<span>${comment.pcContent}</span>
				    		</div>
				    		<div style="display: flex; justify-content: space-between;">
					    		<div class="com-date">
					    			<span><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comment.pcDate}"/></span>
					    		</div>
					    		<div class="com-del">
				    				<button class="com-delBtn" onclick="deleteComment('${comment.pcId}')">삭제</button>
				    			</div>
			    			</div>
			    		</div>
			    	</div>
			    </div>
    			
    		</c:forEach>
    		
			
		   
		</div>
		<br>

    </div>

  	  <jsp:include page="../head_foot/footer.jsp" flush="true"/>

    <script>


        // 다시 페이지을 호출하는 것이 아니라 ajax를 통해 가져온다. 똑같이 controller을 호출하는 것이지만
        // 일부데이터만 다시 가져오는 것이기에 속도면에서 긍정적일 것.

		let id = "${ppId}";
        let user = "${User}";
      	let hasLike = "${hasLike}";
        
        
        $("document").ready(function () { 
            $(".etcReason").hide();
            

        })

        // 좋아요 버튼
            // 좋아요 테이블을 거쳐서 만약에 등록한 게 없으면 등록 실시 => get 좋아요
                // 조건문: if (getLike g == null)
            // 등록한 게 있으면 등록 취소 confirm 처리

            // 가져올 때는 ""를 붙여서 가져와야한다.
   	
      	
      	
            
        $("#likeBtn").click(function(){
        	        	
            toastr.success('등록 완료!', '좋아요', {timeOut: 5000});

            $.ajax({
            	url:"${path}/pp_addLike.do",
				type:"get",
				data:"ppId="+id+"&plUser="+user,
				dataType:"json",
				success:function(data){ // 데이터를 받는 걸 못하고 있다...
					console.log("수신 성공");
					//console.log(data.msg);
					let likeCnt = data.likeCnt; // 모델데이터 이렇게 받는거 맞지...? => 응 맞아.
				    $(".likeCnt").text(likeCnt); // 좋아요 수를 반영해서 가져온다. 
					hasLike = data.hasLike;
				    
				    // 이 녀석을 ajax 바깥에다가 두면 ajax가 처리되는 동안 이 녀석이 먼저 처리되서..
					 if(hasLike==1){ // 왜 0일떄지..?
			            	$("#likeBtn").css("color","red"); 
			            	// vue 활용할 것 
			            	// :class="[조건? 'ture일 경우 class' : 'false일 경우 class']"        
		            }else{
		            	$("#likeBtn").css("color","black"); 
		            }
			    
				},
				error:function(error){
					console.log("에러발생"+"error:"+error)
				}
            	
	
            });
            
           
            
        })


        // 신고하기 버튼 ==> 모달창이 안되서... 뭔가 JS 쪽에 문제가 있는 듯 하다.
        $('#repBtn').click(function(e){
			e.preventDefault();
			$('#reportModal').modal("show");
		});

        // 신고사유 직접 입력 창 토글
        $("[name=repReason]").change(function(){
            
            if($("input[name=repReason]:checked").val()==6){  // :checked 배열 중 선택된 태그 요소 
                $(".etcReason").show();
            }else{
                $(".etcReason").hide();

            }
            
        })



        // ## 글 목록 페이지
            // 누르면 해당 페이지로 이동
        $("#mainBtn").click(function(){
        	
        	location.href="${path}/pp_list.do"; // 동네 혹은 전문가 사진 글목록 이동
		})


        // 이전 글, 다음 글 조회
            // 매개변수: 현재 글의 고유번호에서 숫자 -1, +1를 하면 된다.
                // getPost(int no)

                
        // ## 댓글창 숫자 표시
        let length=0;
        let ctext = $("#commentsText"); // 반복 사용하기때문에 변수 설정        
                

        // ## 댓글 등록
        $("#commentsBtn").click(function(){
            
        	let value= ctext.val();
        	
        	// 공백이면(trim을 했을 때) alert + 등록 취소 
            if(value.trim()==""){
        		toastr.warning('내용을 입력하세요!', '댓글', {timeOut: 5000});
        		alert("내용을 입력하세요!");
        		return;
            }
        	
            $.ajax({
            	url:"${path}/pp_addComment.do",
				type:"get",
				data:"ppId="+id+"&pcUser="+user+"&pcContent="+value,
				dataType:"json",
				success:function(data){ // 데이터를 받는 걸 못하고 있다...
					console.log("수신 성공");
					//console.log(data.msg);
					let clist = data.clist; // 댓글 목록 가져오기
					let commentCnt = data.commentCnt; // 댓글 수
					ctext.text(commentCnt); // 좋아요 수를 반영해서 가져온다. 
					location.reload();
				},
				error:function(error){
					console.log("에러발생"+"error:"+error)
				}
            	
	
            });
            
        })
        
        // 댓글 삭제
        // 얘처럼 뭐 받는게 없다면 dataType, type도 그냥 없애줘라. json 해놓으면 못받으면 에러뜬다.
        function deleteComment(pcId){
		    if(confirm("댓글을 삭제하시겠습니까?")){
		        $.ajax({
		            url:"${path}/pp_delComment.do", // S는 sort
		            data: "pcId="+pcId, // 태그명을 넘겨준다.
		            success:function(){
		                console.log("삭제 성공");
		                location.reload();
		            },
		            error:function(err){
		                console.log("삭제 실패");
		            }
		    
		    
		        })
		
		    }

		}



        ctext.keyup(function(){
            length = ctext.val().length;
            if(length>50){
                alert("50자 이하로 작성하세요.");
                ctext.val(ctext.val().substr(0,50)); // 50자까지만 남아있고, 그 뒤에는 삭제됨.
                length=50;
            }   
            $(".commentsLength").text(length+"/50자"); // span에 글자 부여
            
        })

    </script>
</body>

</html>