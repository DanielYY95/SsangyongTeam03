package springweb.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import springweb.Service.MembersService;
import springweb.vo.Members;

@Controller
@SessionAttributes("members")
@RequestMapping("/web.do")
public class LoginSessionController {

	@ModelAttribute("members")
	public Members getMember() {
		return new Members();
	}
	
	@Autowired
	private MembersService service;
	
	//(2)세션 유지 페이지 
	@RequestMapping(params="method=session")
	//@RequestMapping("/login.do")
	//// http://localhost:7090/springweb/web.do?method=session
	public String login(@ModelAttribute("members") Members sch, Model d) {
		
		sch = service.login(sch);
	
		if(sch!=null) {
			d.addAttribute("loginMsg","로그인 성공!");
			
		}else{
			d.addAttribute("loginMsg","로그인 실패~");
		}
		d.addAttribute("members",sch); // 이렇게 해야 로그인 실패할때 빈값으로 보내진다.
		
		return "forward:/web.do?method=login";
	}
	// 로그인 실패해도 계속 빈 객체가 뷰단으로 보내지는 것 같다. => 해결
	
	// http://localhost:7090/springweb/web.do?method=login (1)메인페이지 
	@RequestMapping(params="method=login")
		public String golog() {
		
			return "login";
		}
	

}

