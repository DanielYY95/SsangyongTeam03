package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MainController {

	
	@RequestMapping("/main.do")
	public String goMain() {
		
		return "login_reg_main//main";
	}
	

}

	
