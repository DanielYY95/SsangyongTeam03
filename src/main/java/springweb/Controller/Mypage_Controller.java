package springweb.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import springweb.Service.MypageService;

@Controller
public class Mypage_Controller {
	
	@Autowired
	MypageService service;
	
	
	@GetMapping("/mypage_pics.do")
	public String mypagePics(String user, Model d) {
		
		d.addAttribute("list", service.myPostList(user));

		
		return "insert_mypage//mypage_pics";
	}
	
	@GetMapping("/mypage_like.do")
	public String mypageGood(String user, Model d) {
		
		d.addAttribute("list", service.myLikeList(user));
		
		return "insert_mypage//mypage_like";
	}
	
	
	
	
}
