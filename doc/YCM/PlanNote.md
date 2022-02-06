## 2월 6일

### 프론트 구상
- 갤러리형 게시판(동네사진, 전문가사진 페이지)
  - 기본적인 Ui
    - 부트스트랩 => 1줄에 4개(데스크탑)->2개(테블릿)->1개(모바일)
    
  - 애니메이션 효과
    - 스크롤에 따라 투명해지는 효과
      - $('.top').css('opacity', 1-$(window).scrollTop()/$('top').height()) 
        => opacity는 0이 되면 투명해진다.
      참조: https://bakey-api.codeit.kr/web/enrollments/example/lessons/906/index.html
    - 스크롤 내리면 이쁘게 나타나는 효과
      - 스크롤 했을 때 최상단이 해당 div의 위치 상단을 넘을 때
      - 참조: https://portpoliocss.yangchomyeong.repl.co

- 댓글 등록 창
  - 부트스트랩 최대한 활용하되....

- 노하우 게시판
  - 페이지 처링(1페이지 10개씩)

- Header
  - 테블릿에서 어떻게 줄바꿈을 해나갈지.....



- Footer
  - 아직 모바일 부분에서 조금 다듬어야...

