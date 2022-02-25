package springweb.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.Service.PP_Service;
import springweb.vo.Pro_Comment;
import springweb.vo.Pro_Like;

@Controller
public class PP_Controller {
	
	@Autowired
	PP_Service service;
	
	
	// ajax처리할 때, URL을 다르게 해야하는가? 
	// param => method=@@@ 처럼 하면 될듯???
	
	@GetMapping("/pp_list.do")
	public String getPPList(Model d) {
		
		d.addAttribute("pplist", service.getPPList());
		
		// 좋아요 수도 보여주려고 하는데 이게 게시물 테이블에 없어서 낭패네...
		
		
		return "pics_post//Pro_Pics";
	}
	
	
	// 전문가사진 초기화면
	@GetMapping("/pp_listF.do") // 초기화면으로 최신순을 넘겨준다. 
	public String getPPListF(String comparator, Model d) {
		
	// 요청값 compartator가 없으면 최신순으로 초기화
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		
		
		return "pics_post//Pro_Pics";
	}
	
	
	// 전문가사진 지역명 검색
	@GetMapping("/pp_listP.do") 
	public String getPPListP(String place, Model d) {
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		
		
		return "pics_post//Pro_Pics";
	}
	
	// 전문가사진 태그 검색
	@GetMapping("/pp_listC.do") 
	public String getPPListC(String category, Model d) {
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		
		
		return "pics_post//Pro_Pics";
	}
	
	
	@GetMapping("/pp_post.do") // 그냥 vo객체로 받아도 될것 같은데?
	public String getPPPost(Pro_Like ins, Model d) {
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		String ppId = ins.getPpId();
		System.out.println(ppId);
		
		service.addPPView(ppId); // 조회수 증가 후에 게시물 부여
		d.addAttribute("post", service.getPP(ppId)); // 게시물 눌렀을 때, 게시물id를 부여해줘야한다. request(포워딩)
		d.addAttribute("ppId", ppId); // 게시물 id 부여
	
		
		System.out.println("좋아요체크"+service.hasPPLike(ins));
		
		d.addAttribute("hasLike", service.hasPPLike(ins)); // 좋아요 확인
		
		d.addAttribute("clist", service.getPPComment(ppId));
		d.addAttribute("commentCnt", service.getPPCommentCnt(ppId)); // 댓글 수를 가져온다. 
		d.addAttribute("likeCnt", service.getPPLikeCnt(ppId)); // 좋아요 수를 가져온다. 
		
		
		// 만약 좋아요를 눌러서 취소하고싶을때, confirm뜨게끔 하려면 애초에 처음부터 hasppLike 결과를 불러와야하는건가?
		
		return "pics_post//Pics_Post";
	}
	
	
	
	
	@GetMapping("/pp_addLike.do")
	public String setPPLike(Pro_Like ins, Model d) {
		System.out.println("등록한 사람 "+ins.getPlUser());
		System.out.println("게시물 "+ins.getPpId());
		
		//=>이게 자꾸 이상하게 값이 들어가지는 것 같다? mapper에서 parametertype을 String으로 줘서 그런가?
		// 매개변수 두개여서 잘 안되는건가... 그냥 일단은 vo객체로 바꿔줬다. 
		if(service.hasPPLike(ins)==0) { 
			service.insertPPLike(ins);
			d.addAttribute("msg","등록가능");
		}else {
			service.deletePPLike(ins);
			d.addAttribute("msg","등록불가");
		}
		d.addAttribute("likeCnt", service.getPPLikeCnt(ins.getPpId()));
		d.addAttribute("hasLike", service.hasPPLike(ins));
		
		return "pageJsonReport"; // view단에 넘겨주는 것이 아니라... 여기로 넘겨줘야 ajax에서 Json데이터 받아온다. 
	}
	
	
	
	// 이걸 설정해주기위해 먼저 디스패처서블릿에 Jsonview사용할꺼고, 기본 View보다 내가 정의한 거 먼저 우선순위에 둘거야
	// 그리고 모델데이터를 해당 Jsonview를 통해 가져올 수 있는데, ajax에서는 data로 기본으로 가져오고,
	// data.key값을 통해 가져온다. 
	
	@GetMapping("/pp_addComment.do")
	public String setPPComment(Pro_Comment ins, Model d) {
		System.out.println("등록한 사람 "+ins.getPcUser());
		System.out.println("게시물 "+ins.getPpId());

		service.insertPPComment(ins); 
		
		d.addAttribute("cList", service.getPPComment(ins.getPpId()));
		d.addAttribute("commentCnt", service.getPPCommentCnt(ins.getPpId()));
		
		
		return "pageJsonReport"; // view단에 넘겨주는 것이 아니라... 여기로 넘겨줘야 ajax에서 Json데이터 받아온다. 
	}
	
	@GetMapping("/pp_delComment.do")
	public String delPPComment(String pcId) {
		
		service.deletePPComment(pcId);
		
		return "pics_post//Pics_Post"; // 이렇게 돌려주는게 맞나? 
	}
	
	
	@GetMapping("/pp_insert.do")
	public String insertPP() {
		
		
		
		return "insert_mypage//insert_pics";
	}
	
	

	

	
	// 생각해보니 table명과 약어도 그냥 여기서 해도 되겠는데?
	// => 	
	// table과 약어도 어차피 각 테이블 controller에 들어오면 해당 기능메서드에서
	// 이미 table명과 약어가 이미 주어진다. 
	// getPPList에 해당하는 sql문 
		// select * from pro_pics order by pp_#{정렬기준} DESC; 
	

	// 기능메서드는 베스트/최신/조회순 각각 만들어야할듯하다.
		// => 아니다. 어차피 sql문 달라지는 것도 order by #{comparator} 이기에....
		// 하나의 메서드로 해도 될듯
	
	
	
	// 1. 지역명 검색
	
	
	// 2. 태그 검색

	
	// 3. 최신 순 // 4. 조회순 // 5. 베스트순
	
	
	// 6. 하나의 글 조회 => 클릭했을 때 getPP(int pp_id) 
		// 그러면 pp_id는 어떻게 받음? 
		// 반복문으로 데이터를 화면에 출력할 때 <a href="aaa.com?pp_id="+${vo.pp_id}">
	
	
	// 7. 글 등록
	
	
	// 8. 페이징 처리???
		
	
	
	
}
