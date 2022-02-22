package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import springweb.vo.Members;

@Controller
public class MemberController {
	@RequestMapping("/login.do")
	public String login(Members ins, Model d) {
		System.out.println("아이디 : "+ins.getmName());
		return "/WEB-INF/views/jsp/login.jsp";
	}
	@RequestMapping("/regchk.do")
	public String goRegchk() {
		return "/WEB-INF/views/jsp/regcheck.jsp";
	}
	@RequestMapping("/reg.do")
	public String insertMembers(Members ins, Model d) {
		System.out.println("이름"+ins.getmName());
		return "/WEB-INF/views/jsp/reg.jsp";
	}
}



