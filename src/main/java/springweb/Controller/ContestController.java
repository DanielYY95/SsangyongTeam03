package springweb.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.Service.ContestService;
import springweb.vo.Contest;

@Controller
@RequestMapping("/contest.do")
public class ContestController {
	@Autowired
	private ContestService service;

	@RequestMapping(params="method=list")
	public String ContestList(Contest sch, Model d) {
		d.addAttribute("ContestList", service.getContestList(sch));
		return "list_contest//contest";
	}

}