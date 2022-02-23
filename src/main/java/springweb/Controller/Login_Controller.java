package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login_Controller {

	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm() {
		
		
		
		return "login";
	}
	
	
}
