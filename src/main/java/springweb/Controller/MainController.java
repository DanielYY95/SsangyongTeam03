package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.vo.Members;
@Controller
public class MainController {

	
	@RequestMapping("/main.do")
	public String goMain() {
		return "/WEB-INF/views/jsp/main.jsp";
	}
	
	@RequestMapping("/regchk.do")
	public String goRegchk() {
		return "/WEB-INF/views/jsp/regcheck.jsp";
	}
	
	

	@RequestMapping("/reg.do")
	public String insertMembers(Members ins, Model d) {
		System.out.println("이름 : "+ins.getmName());
		System.out.println("비밀번호 : "+ins.getmPass());
		return "/WEB-INF/views/jsp/reg.jsp";
	}
}

	