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
	
	@RequestMapping(params="method=session")
	//(2)세션 유지 페이지 
	// http://localhost:7090/springweb/web.do?method=session
	public String login(@ModelAttribute("members") Members sch, Model d
			) {
		System.out.println( "1번 :"+ sch + sch.getmId());sch = service.login(sch);System.out.println( "2번 :"+sch);
		// 
		if(sch!=null) {
			d.addAttribute("loginMsg","로그인 성공!");
			d.addAttribute("members",sch);
			return "/main.do";
			// 수정 (김효은) : 로그인 성공시 메인화면으로 이동 
		}else {
			d.addAttribute("loginMsg","로그인 실패~");
		}

		
		return "forward:/web.do?method=login";
	}
	// (1) 로그인  페이지 
	// http://localhost:7090/springweb/web.do?method=login
	@RequestMapping(params="method=login")
		public String golog() {
			return "/WEB-INF/views/jsp/login.jsp";
		}

}

