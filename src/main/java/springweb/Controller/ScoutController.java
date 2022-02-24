package springweb.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.Service.ScoutService;
import springweb.vo.PageMaker;
import springweb.vo.Scout_Post;

@Controller
public class ScoutController {
	@Autowired
	private ScoutService service;

	@RequestMapping("/scout.do")
	public String ScoutList(@RequestParam(value="startPage" , defaultValue="1") int startPage, Model d) {
		PageMaker pm = new PageMaker();
		if(startPage > 1) {
			pm.setStartPage((startPage-1)*pm.getDisplayPageNum()+1);
			pm.setEndPage(startPage*pm.getDisplayPageNum());
		}else {
			pm.setStartPage(startPage);
		}
		ArrayList<Scout_Post> map = service.getScoutList(pm);
		int count = service.getScoutListTotal(pm);
		d.addAttribute("ScoutList", map);
		d.addAttribute("recordTotal", count); // 15
		d.addAttribute("recordCount", pm.getDisplayPageNum()); // 10

		/*
		 * 15
		 * paging 10
		 * 15 / 10 = 1 + 1 (paging 갯수)
		 * 15 % 10 = 5 ( 예를 0이라면 2페이자 되면안됨.)
		 */
		return "scout";
	}


}