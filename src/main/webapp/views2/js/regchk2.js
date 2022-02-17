/* - 모두동의 체크하면 모든 체크박스가 체크/해제 된다. 
     필수동의 2개가 체크되어야만 버튼을 활성화되어야한다. 
   - 모든 체크가 체크되면 위에 작성한 agreemenst Object에 보내주고,
     버튼을 활성화/비활성화 시키는 함수를 실행시킨다. */
//(1) DOM 요소
const form = document.querySelector("#form_wrap");
const checkAll = document.querySelector(".terms__check__all input");
const checkBoxes = document.querySelectorAll(".input__check input");
const submitBtn = document.querySelector("button");

// 체크 여부를 false/true로 제어할 것임
// 각 체크박스에 지정한 id 값과 value값 체크여부 저장하는 object
const agreements = {
  allowService: false, //첫번째 필수동의
  privacyPolicy: false, //두번째 필수동의
  allowPromo: false, //프로모션 선택동의
  allowLocal: false, //위치정보 선택동의
};

// (4-1) 모두동의 제외 4개의 체크박스 개별체크
checkBoxes.forEach((i) => i.addEventListener("input", onechk));
// 체크박스에 input 이벤트 발생할때마다 onechk() 함수 실행 !!
// (4-2) onechk 함수는 input 이벤트가 발생된 요소를 받아와 id,checked(체크상태)값을 변수에 담고
// agreements object에 id값과 동일한곳에 checked 값을 넣어준 다음, chkStatus()를 실행하고, btnchk()를 실행한다.
function onechk(e) {
  const { checked, id } = e.target;
  agreements[id] = checked;
  this.parentNode.classList.toggle("active");
  chkStatus();
  btnchk();
}
// (5) chkStatus() 체크박스의 상태를 확인해서 모두동의 체크박스의 체크여부를 정하는 함수
function chkStatus() {
  const { allowService, privacyPolicy, allowPromo, allowLocal } = agreements;
  if (allowService && privacyPolicy && allowPromo && allowLocal) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }
}

// (3)필수동의 체크여부 확인 후 버튼 활성화/비활성화 함수
function btnchk() {
  const { allowService, privacyPolicy } = agreements; //agreements의 필수동의 요소들을 가져와 변수에 담는다
  if (allowService && privacyPolicy) {
    submitBtn.disabled = false; //js input태그의 disabled 속성(활성화)
  } else {
    submitBtn.disabled = true; // &&삼항연산자 사용하여 service,policy 둘다 체크(true)이면
    // 버튼의 disabled를 false(버튼 활성화)
  }
}

// (2) 모두동의 클릭 함수
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
