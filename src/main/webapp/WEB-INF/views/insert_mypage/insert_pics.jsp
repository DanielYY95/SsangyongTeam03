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
    <title>동네사진작가</title>

    <link href="${path}/CSS/insert_pics.css" rel="stylesheet" type="text/css"/>
<!-- 폰트어썸 CDN -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- jquery  -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script> <!-- jquery 라이브러리 CDN -->
<!--  <script type="text/javascript" src="../a00_com/jquery-3.6.0.js"></script> -->
</head>

<script>
	let msg = '${msg}';

	if(msg!=""){
		alert(msg);
		if(msg=="게시물을 등록했습니다."){
			if(confirm("목록으로 돌아가시겠습니까?")){
				location.href="${path}/pp_list.do";
			}
		}
	}		

</script>


<body>
   <jsp:include page="../head_foot/new_header.jsp" flush="true"/>

<div class="ins-pics-container">
	<div class="general_ratio">
		<form action="${path}/pp_insert.do" id="ppInsForm" method="post" enctype="multipart/form-data">
			<div class="select-div">
				<!-- 지역 종류 -->
				<select class="form-select-loc" name="ppPlace">
					<option class="loc-title" selected>지역</option>
					<option value="서울특별시">서울특별시</option>
					<option value="부산광역시">부산광역시</option>
					<option value="대구광역시">대구광역시</option>
					<option value="인천광역시">인천광역시</option>
					<option value="광주광역시">광주광역시</option>
					<option value="대전광역시">대전광역시</option>
					<option value="울산광역시">울산광역시</option>
					<option value="세종특별자치시">세종특별자치시</option>
					<option value="경기도">경기도</option>
					<option value="강원도">강원도</option>
					<option value="충청북도">충청북도</option>
					<option value="충청남도">충청남도</option>
					<option value="전라북도">전라북도</option>
					<option value="전라남도">전라남도</option>
					<option value="경상북도">경상북도</option>
					<option value="경상남도">경상남도</option>
					<option value="제주특별자치도">제주특별자치도</option>
				</select>
				<!-- 사진 종류(임의로 해놨습니다.)-->
				<select class="form-pics-kind" name="ppCategory">
					<option class="pics-title" selected>종류</option>
					<option>자연</option>
					<option>도시</option>
                    <option >야경</option>
                    <option>셀카</option>
                    <option >공원</option>
                    <option >사람</option>
                    <option >동물</option>
					
				</select>
			</div>

			<div class="general_ratio2">
					<!-- 사진 이미지 넣는 곳 -->
					<div id="file-pics-camera">
						<input type="file" id="pics" name="ppFile" onchange="readURL(this);">
						<img style="vertical-align: baseline;" id="img-camera" src="${path}/image/camera3.png">
						<img style="vertical-align: baseline;" id="img-camera2"src="${path}/image/camera.png">
					</div>
				<div class="general_ratio3">
					<!-- 제목 입력란 -->
					<div>
						<input class="pics-ins-title"type="text" name="ppTitle" placeholder="제목을 입력해주세요."/>
					</div>
					<!-- 사진에 대한 짧은 소개 -->
					<div>
						<textarea wrap="hard" class="pics-ins-text" name="ppContent" placeholder="사진에 대해 설명해주세요." ></textarea>
					</div>
					<!-- 해쉬태그 입력란 -->
					<div>
            			<input type="text" id="tag" class="pics-ins-hash" size="7" placeholder="해시태그 등록"/>
          			</div>
                </div>
                <!-- 해쉬태그 엔터시, 나타나는 출력란 -->
                <input type="hidden" name="ppHash" id="rdTag" />
                <input type="hidden" name="ppUser" value="${members.mId}" />
                
            		         	<!-- 해쉬태그 ul -->
            	<ul id="tag-list"></ul>
            	<!-- 해쉬태그 css건드릴 경우 규격, 등록 버튼이 밀려나므로 margin-top을 더 넓히면 된다. -->
					<div style="display:block; margin-top:30px;"><br>
					<!-- 사진 규격 맞추는 버튼 -->
					<input class="img-standard-btn"type="button" value="이미지 규격" onclick="Resize()"/>

					<!-- 등록 버튼 -->
					<span>
						<input type="button" class="pics-ins-button"
							value="등록" id="regBtn"/>
					</span>
				</div>
			</div>
		</form>
	</div>
</div><br><br><br><br>


	  <jsp:include page="../head_foot/footer.jsp" flush="true"/>

</body>


<script>


// 사진 등록
// 프로필 파일 등록
function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('img-camera').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('img-camera') = "";
	  }
	}

$(function () {
	// 카메라 이미지를 클릭했을 때
	$('#img-camera').click(function (e) {
		e.preventDefault();
		// 숨겨진 파일열기 버튼이 클릭되게한다.
		$('#pics').click();
		// 카메라 이미지 사라지게한다.
		$('#img-camera2').hide(500);
	});
});
function changeValue(obj){
	alert(obj.value);
}
// 사진 규격 설정
function Resize() {
var filesToUpload = document.getElementById('pics').files;
var file = filesToUpload[0];
// 문서내에 img 객체를 생성합니다
var img = document.createElement("img");
// 파일을 읽을 수 있는 File Reader 를 생성합니다
var reader = new FileReader();
    // 파일이 읽혀지면 아래 함수가 실행됩니다
    reader.onload = function(e) {
    img.src = e.target.result;
    // HTML5 canvas 객체를 생성합니다
    var canvas = document.createElement("canvas");
    var ctx = canvas.getContext("2d");
    // 캔버스에 업로드된 이미지를 그려줍니다
    ctx.drawImage(img, 0, 0);
    // 최대폭을 400 으로 정했다고 가정했을때
    // 최대폭을 넘어가는 경우 canvas 크기를 변경해 줍니다.
    var MAX_WIDTH = 400;
    var MAX_HEIGHT = 270;
    var width = img.width;
    var height = img.height;
    width = MAX_WIDTH;
    height = MAX_HEIGHT;

    canvas.width = width;
    canvas.height = height;
    // canvas에 변경된 크기의 이미지를 다시 그려줍니다.
    var ctx = canvas.getContext("2d");
    ctx.drawImage(img, 0, 0, width, height);
    // canvas 에 있는 이미지를 img 태그로 넣어줍니다
    var dataurl = canvas.toDataURL("image/png");
    document.getElementById('img-camera').src = dataurl;
    }
	reader.readAsDataURL(file);
}
///////////////////////////////
$(document).ready(function (){
    var tag = {};
    var counter = 0;
    let hashlength = 0;
    
    // 입력한 값을 태그로 생성한다.
    function addTag (value) {
        tag[counter] = value;
        counter++; // del-btn 의 고유 id 가 된다.
    }
    // tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
    function marginTag(){
        return Object.values(tag).filter(function (word) {
            return word !== "";
        });
    }
    // 서버에 제공
    //$("#ppInsForm").on("submit", function (e) {
    //    var value = marginTag(); // return array
    //    $("#rdTag").val(value);
    //    $(this).submit();
    //});
    $("#tag").on("keypress", function (e) {
    	
   	  // 해시태그가 3개이상이면 빠꾸
        if(hashlength>=3){
        	alert("해시태그는 최대 3개까지 등록 가능합니다.");
        	return;
        }
    	
        var self = $(this);
        //엔터나 스페이스바 눌렀을때 실행
        if (e.key === "Enter" || e.keyCode == 32) {
            var tagValue = self.val(); // 값 가져오기
            // 해시태그 값 없으면 실행X
            if (tagValue !== "") {
                // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
                var result = Object.values(tag).filter(function (word) {
                    return word === tagValue;
                })
          

                // 해시태그가 중복되었는지 확인
                if (result.length == 0) {
                	 $("#tag-list").append("<li class='tag-item'><input class='hashInput' value='#"+tagValue
                	 			+"' readonly disabled style='background:'#f7e600';' size='10'; /><input type='button' class='del-btn' idx='"
                	 			+counter+"' value='x'></li>");
                    addTag("#"+tagValue);
                    self.val("");
                    hashlength+= 1;
                } else {
                    alert("태그값이 중복됩니다.");
                }
            }
            e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
        }
    });
    // 삭제 버튼
    // 인덱스 검사 후 삭제
    $(document).on("click", ".del-btn", function (e) {
        var index = $(this).attr("idx");
        tag[index] = "";
        
        $(this).parent().remove();
        hashlength-= 1;
    });
    
	$('#regBtn').click(function(){
		if($("[name=ppTitle]").val().trim() == ''){
			alert("제목을 입력해주세요!");
			return;
		}
		
		if($("[name=ppContent]").val().trim() == ''){
			alert("내용을 입력해주세요!");
			return;
		}
		
		if($("[name=ppFile]").val().trim() == ''){ 
			alert("사진을 등록해주세요!");
			return;	
		}
		
		var value = marginTag(); 
	    $("#rdTag").val(value);
		$("#ppInsForm").submit();
		
		
	})

    
    
})




</script>
</html>