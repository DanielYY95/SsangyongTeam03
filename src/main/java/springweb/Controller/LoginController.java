package springweb.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


import springweb.Service.MembersService;
import springweb.vo.Members;

@SessionAttributes("members")
@Controller
@RequestMapping("/web.do")
public class LoginController {

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
	public String login(@ModelAttribute("members") Members sch, Model d
			) {
		Members members = service.login(sch);
		if(members!=null) {
			d.addAttribute("loginMsg","로그인 성공!");
			d.addAttribute("members",members);
		}else {
			d.addAttribute("loginMsg","로그인 실패~");
		}
//		System.out.println("아이디 : "+sch.getmId());
//		System.out.println("비밀번호 : "+sch.getmPass());
		
		return "forward:/web.do?method=login";
	}
	
	// http://localhost:7090/springweb/web.do?method=login (1)메인페이지 
	@RequestMapping(params="method=login")
		public String golog() {
			return "/WEB-INF/views/jsp/login.jsp";
		}

}

