package springweb.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.vo.Members;

@Controller
public class Login_Controller {

	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm() {

		return "login";
	}
	
	@RequestMapping("/logout.do") 
	public String loginout(HttpSession session) {

		// 1. 세션 종료
		session.invalidate();
		
		// 2. 세션 값 변경
		// d.addAttribute("members", new Members()); // 로그인한 요청값을 받을 수 있게 vo객체 만들어준다. 
		
		return "forward:/main.do";
	}
	
	
	
	@RequestMapping("/regchk.do")
	public String goRegchk() {
		return "login_reg_main//regcheck";
	}
	
	

	@RequestMapping("/reg.do")
	public String insertMembers(Members ins, Model d) {
		System.out.println("이름 : "+ins.getmName());
		System.out.println("비밀번호 : "+ins.getmPass());
		return "login_reg_main//reg";
	}
	
}
