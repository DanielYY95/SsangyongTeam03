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
    <link href="Pics_Post.css" rel="stylesheet" />
    <link href="new_header.css" rel="stylesheet" />
    <link href="footer.css" rel="stylesheet" />
    
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

<body>
    <jsp:include page="new_header.jsp" flush="true"/>

    <div id="Post_Container" >
        <div>제목: </div>
        <div class="Post_Head">
            <div>작성자: </div>
            <div style="display: flex;"> 
                <div>조회수: </div>
                <div>등록일: </div>
            </div>
        </div><br>

        <img class="Post_Img" src="IMG/chicage.png"><br>

        <div>내용: 얼음 속에서 불러내는 것이 따뜻한 봄바람이다.</div><br>

        <div>지역명: 서울특별시 @@구 </div><br>

        <div>
            <button class="btn btn-outline-secondary" style="border-radius: 15px;">태그</button>
            <a href="#">태그1</a>,
            <a href="#">태그2</a>,
            <a href="#">태그3</a>
        </div><br>

        <div class="Post_Bottom">
            <div>
                <button class="btn btn-success">댓글: 0</button>
                <button id="likeBtn" class="btn btn-warning">좋아요: 0</button>
            </div>



            <div>
                <button id="repBtn"  class="btn btn-danger" data-toggle="modal" data-target="#reportModal">신고</button>
                <button id="mainBtn" class="btn btn-info">글 목록</button>
            </div>


        </div>
        

    </div><br>

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

    

    <div id="Comments_Container"> 

        <div class="com-reg" style="display: flex; justify-content: space-between;">
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
        <div class="com-content-block">
    		<p class="title">댓글</p>
		    <div class="com-out-block">
		    	<div class="com-in-block">
		    		<span>
			    		<img src="IMG/roofie.jpg"/>
			    	</span>
			    	<div class="com-write-block">
				    	<span>
				    		마둥석
				    	</span>
				    	<div class="com-view">
			    			<span>그만 하고 싶다!!!!!!!!</span>
			    		</div>
			    		<div class="com-date">
			    			<span>2022.02.10 00:00:00</span>
			    		</div>
			    		<div class="com-del">
		    				<button class="com-delBtn">삭제</button>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="com-out-block">
		    	<div class="com-in-block">
		    		<span>
			    		<img src="IMG/roofie.jpg"/>
			    	</span>
			    	<div class="com-write-block">
				    	<span>
				    		마둥석
				    	</span>
				    	<div class="com-view">
			    			<span>그만 하고 싶다!!!!!!!!</span>
			    		</div>
			    		<div class="com-date">
			    			<span>2022.02.10 00:00:00</span>
			    		</div>
			    		<div class="com-del">
		    				<button class="com-delBtn">삭제</button>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="com-out-block">
		    	<div class="com-in-block">
		    		<span>
                        <img src="IMG/roofie.jpg"/>
			    	</span>
			    	<div class="com-write-block">
				    	<span>
				    		마둥석
				    	</span>
				    	<div class="com-view">
			    			<span>그만 하고 싶다!!!!!!!!</span>
			    		</div>
			    		<div class="com-date">
			    			<span>2022.02.10 00:00:00</span>
			    		</div>
		    			<div class="com-del">
		    				<button class="com-delBtn">삭제</button>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		</div>


    </div>
	
	<jsp:include page="footer.jsp" flush="true"/>
  

    <script>





        // 다시 페이지을 호출하는 것이 아니라 ajax를 통해 가져온다. 똑같이 controller을 호출하는 것이지만
        // 일부데이터만 다시 가져오는 것이기에 속도면에서 긍정적일 것.


        $("document").ready(function () { 
            $(".etcReason").hide();

        })



        // 좋아요 버튼
            // 좋아요 테이블을 거쳐서 만약에 등록한 게 없으면 등록 실시 => get 좋아요
                // 조건문: if (getLike g == null)
            // 등록한 게 있으면 등록 취소 confirm 처리

        $("#likeBtn").click(function(){
            toastr.success('등록 완료!', '좋아요', {timeOut: 5000});

            $.ajax(function(){


            })
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
			location.href="Pro_Pics.html" // 동네 혹은 전문가 사진 글목록 이동
		})


        // 이전 글, 다음 글 조회
            // 매개변수: 현재 글의 고유번호에서 숫자 -1, +1를 하면 된다.
                // getPost(int no)


        // ## 댓글 등록
        $("#commentsBtn").click(function(){
            // 공백이면(trim을 했을 때) alert + 등록 취소 
            toastr.warning('내용을 입력하세요!', '댓글', {timeOut: 5000});

            
        })


        // ## 댓글창 숫자 표시
        let length=0;
        let ctext = $("#commentsText"); // 반복 사용하기때문에 변수 설정

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