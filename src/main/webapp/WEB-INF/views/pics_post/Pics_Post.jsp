<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script> <!-- 부트스트랩 JS CDN -->
<link href="Pics_Post.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> <!-- 부트스트랩  CSS CDN -->
    <script src="https://kit.fontawesome.com/bacd219d28.js" crossorigin="anonymous"></script><!-- fontawesome 아이콘 사용 -->


</head>

<body>
    

    <div id="Post_Container" >
        <div>제목: </div>
        <div class="Post_Head">
            <div>작성자: </div>
            <div style="display: flex;"> 
                <div>조회수: </div>
                <div>등록일: </div>
            </div>
        </div><br>

        <img class="Post_Img" src="../IMG/chicage.png"><br>

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
                <button class="btn btn-warning">좋아요: 0</button>
            </div>



            <div>
                <button class="btn btn-danger">신고</button>
                <button class="btn btn-info">글 목록</button>
            </div>


        </div>
        

    </div><br>


    <div id="Comments_Container"> 

        <div style="display: flex; justify-content: space-between;">
            <div class="L_Arrow"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="150" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
              </svg><span style="padding-left: 20px;">이전 글</span></div>

            <div class="mb-2">
                <label for="commentsText" class="form-label">댓글 내용</label>
                <textarea id="commentsText" class="form-control" rows="3"></textarea>
                <span class="commentsLength">0/50자</span>
                <button id="commentsBtn" class="btn btn-primary">등록</button>
            </div>
            <div class="R_Arrow"><span style="padding-right:20px;">다음 글</span><svg xmlns="http://www.w3.org/2000/svg" width="50" height="150" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
                <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
              </svg></div>

        </div>




    </div>


    <script>
        $("document").ready(function () { })

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

</body>
</html>