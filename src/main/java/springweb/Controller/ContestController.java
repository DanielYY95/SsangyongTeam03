package springweb.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.Service.ContestService;
import springweb.vo.Contest;
import springweb.vo.PageMaker;

@Controller
public class ContestController {
	@Autowired
	private ContestService service;

	@RequestMapping("/contest.do")
	public String ContestList(@RequestParam(value="startPage" , defaultValue="1") int startPage, Model d) {
		PageMaker pm = new PageMaker();
		if(startPage > 1) {
			pm.setStartPage((startPage-1)*pm.getDisplayPageNum()+1);
			pm.setEndPage(startPage*pm.getDisplayPageNum());
		}else {
			pm.setStartPage(startPage);
		}
		ArrayList<Contest> map = service.getContestList(pm);
		int count = service.getContestListTotal(pm);
		d.addAttribute("ContestList", map);
		d.addAttribute("recordTotal", count); // 15
		d.addAttribute("recordCount", pm.getDisplayPageNum()); // 10

		return "contest";
	}

}