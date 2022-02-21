package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PP_Controller {

	@ExceptionHandler(Exception.class)
	public String errorCatcher(Exception ex) {
		
		return "에러를 보여줄 view화면"; // 사용자 친화 화면을 위해 => 모든 jsp에 errorpage 설정하는 건 좀 그러니까..
	}
	
	
	// 
	@GetMapping("/pro_picslistF.do") // 초기화면으로 최신순을 넘겨준다. 
	public String getPPListF(String comparator, Model d) {
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		
		
		return "view단";
	}
	
	@GetMapping("/pro_picslistP.do") 
	public String getPPListP(String place, Model d) {
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		
		
		return "view단";
	}
	
	@GetMapping("/pro_picslistC.do") 
	public String getPPListC(String category, Model d) {
		
//		d.addAttribute("pplist", service.getPPList(Comparator));
		
		
		return "view단";
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
