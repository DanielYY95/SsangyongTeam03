<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="${path }/CSS/Pro_Pics.css" rel="stylesheet" /> <!-- CSS 파일 --> <!-- css폴더 따로  -->

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> <!-- 부트스트랩 JS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- 부트스트랩  CSS CDN -->


</head>
    <% session.setAttribute("User", "asd456"); 
      %>
    
<script>
	let User = "${User}";
	
	function goDetail(ppId){
	
		location.href="${path}/pp_post.do?ppId="+ppId+"&plUser="+User;
		
		// 자바스크립트로 호출하기 때문에 화면전환이 되는 것이 아니라 return "view"에 해당하는 html 값이 나온다. 
		// form으로 보내야만 post방식으로 보낼 수 있다. 
		
		 /*$.ajax({
	        url:"${path}/pp_post.do", // url에 이동은 안하고 그냥 데이터를 보내주기만 하네? 
	        data: "ppId="+ppId, // 태그명을 넘겨준다.
	        success:function(){
	            console.log("이동 성공");
	            console.log(ppId);
	            //location.href="${path}/pp_post.do"; //이걸 해줘야 url 이동이 된다. 
	        },
	        error:function(err){
	            console.log("이동 실패");
	        }
		})
		*/
	}
	

</script>

<body>

    <!--start #### bootstrap: 갤러리형 #### -->
    <!-- 992(테블릿)에서 두 블록, 576(모바일)에서 한 블록-->

    <!--
        카드를 어떻게 동일한 높이로...??
        => 해결방법
            1.사진을 첨부했을 때 아예 같은 사이즈로 만든다.
            2. css를 사용하여 card-img-top클래스에 height 맞추고, object-fit:cover로 바꿔준다.


        부트스트랩 문제
        mx-auto 같은게 왜 작동이 안되지 ㅠㅠ

    -->
    <jsp:include page="../head_foot/new_header.jsp" flush="true"/>
    
 
    

    <div id="Pro_Pics_Container">

        <div class="title">전문가사진</div><br>

		<!-- 필터 -->
        <div class="filter">


            <div class="place_tag_filter">
                <div><label style="padding-right: 10px;">지역명</label><input type="text" size="10"><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                  </svg></button></div>

                <div><label style="padding:0 10px;">태그</label><select name="" id="">
                        <option value="" selected>
                            전체 <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor"
                                preserveAspectRatio="xMidYMid meet">
                                <path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
                            </svg></button>
                        </option>
                        <option value="">자연</option>
                        <option value="">야경</option>
                        <option value="">도시</option>
                        <option value="">셀카</option>
                        <option value="">공원</option>
                        <option value="">사람</option>
                        <option value="">동물</option>

                        <!-- 셀카, 공원 삭제. 사람=> 인물    풍경 추가 -->

                    </select></div>

            </div>
            <div class="view_filter">
                <div><a href="#" class="mostDate" style="font-weight: 700; text-decoration: underline;">최근순</a></div>
                <div><a href="#" class="mostView">조회순</a></div>
                <div><a href="#" class="mostLike">베스트순</a></div>


            </div>
        </div><br>

        <!-- 조회수 => 그림  
        
            // 1. 인스타
            // 2. 프로필 닉네임 조회수 상단   /// 제목 좋아요 하단
            // 3. 좋아요 조회수 우측 상단 /// 제목 프로필 닉네임 하단

            배경색깔; f7f7f7;
       
            ### 게시물을 눌렀을 때 게시물의 고유번호가 어떻게 넘어가느냐?
            애초에 매인에서 게시물 리스트가 등장.
            c:forEach 이렇게 할껀데 뭐 <tr onclick="detail(empno)" 했던 것처럼 넘겨주면 된다!!! 
  
        -->
		
		
		<div class="row">
			<c:forEach var="pp" items="${pplist}">
				<div class="card col-sm-6 col-lg-3 ">
	                <!-- card 형태 -->
	                <div style="display:flex; justify-content: space-between;">
		                <div class="profile">
		                    <!-- 프로필 사진과 닉네임 -->
		                    <span>프로필</span>
		                    <span>${pp.ppUser }</span>
		                </div>
		             	<div><span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
		                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
		                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
		                      </svg> ${pp.ppView}</span>
		                     <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
	                        <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
	      <!--  pp.ppLikecnt} --> </svg></span></div>
                     </div>
	             
	                
	                <a class="post" href="#">
	                    <img src="${path}${pp.ppPhoto}" class="img-thumbnail card-img-top" 
	                    alt="사진을 찾을 수 없음." onclick="goDetail('${pp.ppId}')">
	                    <!-- 이미지에 둥근 1px 테두리 모양을 제공, card 이미지가 위로 -->
	
	                </a>
	                <div class="card-body">
	                	
	                    <span style="display: block; text-align: center;" class="card-text" style="text-align:center;">${pp.ppTitle}</span>
	                    <span style="float:right;"><fmt:formatDate pattern="yyyy-MM-dd" value="${pp.ppDate}"/></span>
	                </div>
	            </div>
			
			</c:forEach>
		</div>
			
		 <!--  <img src="${path}/upload/sea.png" /> -->
        </div><br><br>

        
        <div style="width: 80%; margin: 0 auto;">
            <ul class="pagination" style="width: 28%; margin: 0 auto;"> 
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </div>

        <!--end #### bootstrap: 갤러리형 #### -->

  
    
    
    <jsp:include page="../head_foot/footer.jsp" flush="true"/>

    <script>
       
        // 정렬을 눌렀을때, 글자 css 변경 + 정렬 실행
        $(".view_filter a").click(function(){
        	
        	$(".view_filter a").css({"font-weight": "300", "text-decoration": "none"});
        	$(this).css({"font-weight": "700", "text-decoration": "underline"});
        	
            let comparator = $(this).attr("class");

            alert(comparator+"정렬!");
            getByFilter(comparator);
        	
        })
        


        function getByFilter(comparator){

            $.ajax({
                url:"${path}/pro_picslistF.do", // F는 filter // url에 따라 컨트롤러를 다르게 호출하기 때문에 어쩔 수 없었다.
                type:"get",
                data: "comparator="+comparator, // 정렬 기준을 넘겨준다.
                dataType:"json",
                success:function(data){
                    let List = data.List; // 일반적인 이름인 List로 하는게 좋을 듯하다. 
                    console.log(List);
                    
                    let html=""; // 화면에 만들어줄 요소들
                    $.each(List,function(idx, vo){ // 페이징 처리 필요!

                        // html+="<tr><td>"+emp.empno+"</td><td>"+emp.ename+"</td><td>"+emp.job+
                        // "</td><td>"+emp.sal+"</td><td>"+emp.deptno+"</td></tr>";
                    });
                    console.log(html);
                    $("tbody").html(html);						
                },
                error:function(err){
                    console.log(err)
                }


            })



        }

		
        
 

    </script>


</body>

</html>