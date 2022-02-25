package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Mypage_Controller {
	
	
	@GetMapping("/mypage_pics.do")
	public String mypagePics() {
		
		
		
		return "insert_mypage//mypage_pics";
	}
	
	@GetMapping("/mypage_good.do")
	public String mypageGood() {
		
		
		
		return "insert_mypage//mypage_good";
	}
	
	
	
	
}
