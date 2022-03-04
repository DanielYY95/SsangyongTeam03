


function getByFilter(comparator){
    // 베스트순(like), 조회순(view), 최신 순(latest) 모두에게 적용됨.
    // 매개변수: 테이블명과 정렬 기준, 약어
    // ab는 테이블 약어 ex) LP, PP, KH 등
    // Comparator를 부여하는 것도
        // event.target 같은 것을 활용해서 더 편하게 할 수 있을듯
        // 컨트롤러에서 하나의 메서드인데 if-else문을 통해 받은 게 뭔지에 따라 메서드 호출 다르게

    // 테이블명은 pageContext를 활용한다! 
        // <c:set var="table" value="테이블명" ></c:set>
        // let table = ${table}

    // 약어도 pageContext => EL 태그 활용
         // <c:set var="ab" value="테이블 약어" ></c:set>
        // let ab = ${ab} 
    // => 약어는 그냥 controller에서 해결해도 될듯.


    // Dao : ArrayList<Vo객체> get테이블명List(String 테이블명, String 정렬 기준)
    // select * from #{테이블명} order by #{약어}_#{정렬기준} DESC; 
        // 아니면 약어_정렬기준을 변수에서 설정해줘도 된다.


    // ## 질문 거리: 동적쿼리에서 테이블명, 조건절 같은 곳에서도 괜찮나?

    $.ajax({
        url:"${path}/"+table+"listF.do", // F는 filter // url에 따라 컨트롤러를 다르게 호출하기 때문에 어쩔 수 없었다.
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


function getByPlace(place){
    // 지역명 검색
    // 매개변수: 테이블명과 지역 검색어, 약어
    // 지역 검색어는 keyword
    // ab는 테이블 약어 ex) LP, PP, KH 등
    // sql 은 select * from #{테이블명} where #{ab} || _place like '%' || #{place} || '%'

    $.ajax({
        url:"${path}/"+table+"listP.do", // P는 place
        type:"get",
        data: "place="+place, // 테이블명과 지역명을 넘겨준다.
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


function getByTag(sort){
    // 태그 검색
    // 매개변수: 테이블명, sort, ab /// sort라는 이름이 좀 그르네... tag가 낫지 않은가?

    // sql은 select * from #{테이블명} where #{ab} || _sort like '%' || #{sort} || '%'


    $.ajax({
        url:"${path}/"+table+"listS.do", // S는 sort
        type:"get",
        data: "sort="+sort, // 태그명을 넘겨준다.
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


function deleteComment(댓글id){
    if(confirm("댓글을 삭제하시겠습니까?")){
        $.ajax({
            url:"${path}/delele@@.do", 
            type:"get",
            data: "@@="+@@, // 태그명을 넘겨준다.
            dataType:"json",
            success:function(data){
                console.log("삭제 성공");
            },
            error:function(err){
                console.log("삭제 실패");
            }
    
    
        })

    }

}

