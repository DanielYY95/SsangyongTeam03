package springweb.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LP_Controller {
	
	
	@ExceptionHandler(Exception.class)
	public String errorCatcher(Exception ex) {
		
		return "에러를 보여줄 view화면"; 
	}
	
	
	@GetMapping("/local_picslistF.do")
	public String getPPListF(@RequestParam("comparator") String comparator, Model d) {
		
//		d.addAttribute("lplist", service.getPPList(Comparator));
		
		
		return "view단";
	}
		
	
	
	
	
	
	
	
	
}
