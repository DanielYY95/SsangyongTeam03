package springweb.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import springweb.Service.MembersService;
import springweb.vo.Members;

@Controller
public class LoginController {
	@Autowired
	private MembersService service;
	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm() {

		return "/WEB-INF/views/login_reg_main/login.jsp";
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
		return "/WEB-INF/views/login_reg_main/regcheck.jsp";
	}
	
	
	//회원가입 form
		@RequestMapping("/reginsert.do")
		public String insertMembers(@ModelAttribute Members ins, Model d) {
			int result = service.idChk(ins);
			if(result == 1) {
				d.addAttribute("result", service.idChk(ins));
				return "/WEB-INF/views/login_reg_main/reg.jsp";
			} else if(result == 0) {
				service.insertMembers(ins);
				d.addAttribute("result", service.idChk(ins));
			}
			System.out.println("아이디 : "+ins.getmId());
			System.out.println("비밀번호 : "+ins.getmPass());
//			service.insertMembers(ins);
			
			return "/WEB-INF/views/login_reg_main/main.jsp";
		}

	//회원가입 페이지 접속
	@RequestMapping("/reg.do")
	public String goreg() {
		
		return "/WEB-INF/views/login_reg_main/reg.jsp";
	}
	
	// id 중복확인  mId 
	@ResponseBody
	@RequestMapping("/regcheck.do")
	public String idChk(Members ins, Model d) {
		System.out.println("확인 : "+ins.getmId());
		d.addAttribute("result", service.idChk(ins));
		return "pageJsonReport";
		}
	}
