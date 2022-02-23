package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class KP_Controller {

	@ExceptionHandler(Exception.class)
	public String errorCatcher(Exception ex) {
		
		return "에러를 보여줄 view화면"; 
	}
	
	
	@GetMapping("/know_howlistF.do")
	public String getPPListF(@RequestParam("comparator") String comparator, Model d) {
		
//		d.addAttribute("khlist", service.getPPList(Comparator));
		
		
		return "view단";
	}
	
	
}
