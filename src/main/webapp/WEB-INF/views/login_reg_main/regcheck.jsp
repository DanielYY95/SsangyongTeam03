<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./favicon.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
     integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js" 
     integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ==" 
     crossorigin="anonymous" 
     referrerpolicy="no-referrer"></script>
     <!-- css 파일 -->
    <link rel="stylesheet" href="${path }/CSS/regchk.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gugi&family=Nanum+Myeongjo&family=Song+Myung&display=swap');
        </style>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
  
      <!-- 부트스트랩 css 사용 --> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript" 
  src="${path}/a00_com/jquery-3.6.0.js"></script>
  <title>동네사진작가 </title>
</head>


  <body>
    <div class="wrap">
      <div class="logo"><h1>동네사진작가</h1></div>
      <div class="contents">
        <form action="${path }/reg.do" method="POST" id="form__wrap" onsubmit="return btnchk()">
          <div class="terms__check__all">
            <input type="checkbox" name="checkAll" id="checkAll" />
            <label for="checkAll">
              이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택),
              프로모션<br />
              안내 메일 수신(선택)에 모두 동의합니다.
            </label>
          </div>
          <ul class="terms__list">
            <li class="terms__box">
              <div class="input__check">
                <input
                  type="checkbox"
                  name="agreement"
                  id="allowService"
                  value="allowService"
                  required
                />
                <label for="allowService" class="required">
                  이용약관 동의(필수)
                </label>
              </div>
              <div class="terms__content">
                여러분을 환영합니다. 동네사진작가 서비스 및 제품(이하
                '서비스')을 이용해주셔서 감사합니다. 본 약관은 다양한
                동네사진작가 서비스의 이용과 관련하여 동네사진작가 서비스를
                제공하는 동네사진작가 주식회사(이하 동네사진작가)와 이를
                이용하는 동네사진작가 서비스 회원(이하 ‘회원’) 또는 비회원과의
                관계를 설명하며, 아울러 여러분의 동네사진작가 서비스 이용에
                도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input
                  type="checkbox"
                  name="agreement"
                  id="privacyPolicy"
                  value="privacyPolicy"
                  required
                />
                <label for="privacyPolicy" class="required">
                  개인정보 수집 및 이용에 대한 안내(필수)
                </label>
              </div>
              <div class="terms__content">
                개인정보보호법에 따라 동네사진작가 에 회원가입 신청하시는 분께
                수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적,
                개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시
                불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여
                주시기 바랍니다.1. 수집하는 개인정보 이용자는 회원가입을 하지
                않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과
                동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그
                등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을
                할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를
                수집합니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input
                  type="checkbox"
                  name="agreement"
                  id="allowPromo"
                  value="allowPromo"
                />
                <label for="allowPromo"> 프로모션 정보 수신 동의(선택) </label>
              </div>
              <div class="terms__content">
                동네사진작가에서 제공하는 이벤트/혜택 등 다양한 정보를
                휴대전화(동네사진작가 앱 알림 또는 문자), 이메일로 받아보실 수
                있습니다. 일부 서비스(별도 회원 체계로 운영하거나 동네사진작가
                가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별
                서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신
                동의에 대해 별도로 안내하고 동의를 받습니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input
                  type="checkbox"
                  name="agreement"
                  id="allowLocal"
                  value="allowLocal"
                />
                <label for="allowLocal"> 위치정보 이용약관 동의(선택) </label>
              </div>
              <div class="terms__content">
                여러분을 환영합니다. 동네사진작가 서비스 및 제품(이하
                ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한
                동네사진작가 서비스의 이용과 관련하여 동네사진작가 서비스를
                제공하는 동네사진작가 주식회사(이하 '동네사진작가')와 이를
                이용하는 동네사진작가 서비스 회원(이하 ‘회원’) 또는 비회원과의
                관계를 설명하며, 아울러 여러분의 동네사진작가 서비스 이용에
                도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
              </div>
            </li>
          </ul>
          <!-- 페이지이동 오류 있었음 type="submit"->"button"으로 변경 -->
          <button
            type="submit"
            class="next-button"
            disabled
         
          >
            확인
          </button>
        </form>
      </div>
    </div>
    <script>
    /* 체크박스 javascript 
    - 모두동의 체크하면 모든 체크박스가 체크/해제 된다. 
    필수동의 2개가 체크되어야만 버튼을 활성화되어야한다. 
    모든 체크가 체크되면 위에 작성한 agreemenst Object에 보내주고,
    버튼을 활성화/비활성화 시키는 함수를 실행시킨다. */
//(1) DOM 요소
const form = document.querySelector("#form_wrap");
const checkAll = document.querySelector(".terms__check__all input");
const checkBoxes = document.querySelectorAll(".input__check input");
const submitBtn = document.querySelector("button");
//체크 여부를 false/true로 제어할 것임
//각 체크박스에 지정한 id 값과 value값 체크여부 저장하는 object
const agreements = {
 allowService: false, //첫번째 필수동의
 privacyPolicy: false, //두번째 필수동의
 allowPromo: false, //프로모션 선택동의
 allowLocal: false, //위치정보 선택동의
};
//(4-1) 모두동의 제외 4개의 체크박스 개별체크
checkBoxes.forEach((i) => i.addEventListener("input", onechk));
//체크박스에 input 이벤트 발생할때마다 onechk() 함수 실행 !!
//(4-2) onechk 함수는 input 이벤트가 발생된 요소를 받아와 id,checked(체크상태)값을 변수에 담고
//agreements object에 id값과 동일한곳에 checked 값을 넣어준 다음, chkStatus()를 실행하고, btnchk()를 실행한다.
function onechk(e) {
 const { checked, id } = e.target;
 agreements[id] = checked;
 this.parentNode.classList.toggle("active");
 chkStatus();
 btnchk();
}
//(5) chkStatus() 체크박스의 상태를 확인해서 모두동의 체크박스의 체크여부를 정하는 함수
function chkStatus() {
 	const { allowService, privacyPolicy, allowPromo, allowLocal } = agreements;
 	if (allowService && privacyPolicy && allowPromo && allowLocal) {
  	 checkAll.checked = true;	
	 } else {
	   checkAll.checked = false;
 	}
}
//(3)필수동의 체크여부 확인 후 버튼 활성화/비활성화 함수
function btnchk() {
	 const { allowService, privacyPolicy } = agreements; //agreements의 필수동의 요소들을 가져와 변수에 담는다
 	if (allowService && privacyPolicy) {
 	  submitBtn.disabled = false; //js input태그의 disabled 속성(활성화)
 	} else {
  	 submitBtn.disabled = true; // &&삼항연산자 사용하여 service,policy 둘다 체크(true)이면
   // 버튼의 disabled를 false(버튼 활성화)
 }
}
//(2) 모두동의 클릭 함수
	checkAll.addEventListener("click", (e) => {
	 const { checked } = e.target;
 // const checked = e.target.checked; 와 같음. 구조 분해할당으로 가져옴..
	 if (checked) {
  	 checkBoxes.forEach((i) => {
    	 i.checked = true;
     // e.target에서 받은 checked의 값이 true 면 foreach 문을 통해
     // 하나씩 돌려서 수행한다. i=>item(체크박스)
   	  agreements[i.id] = true; // agreements에서 i의 id값을 받아와서 object의 id 값과 동일한 부분에 true
     i.parentNode.classList.add("active");
   });
 	} else {
  	 checkBoxes.forEach((i) => {
     i.checked = false;
     agreements[i.id] = false;
     i.parentNode.classList.remove("active");
   });
 }
 btnchk(); //if문이 끝나면 btnchk()함수 실행
});
    </script>
    
    <!-- 푸터 --> 
    		<footer>
	 <jsp:include page="../head_foot/footer.jsp" flush="true"/>
		</footer>
		
</body>

</html>