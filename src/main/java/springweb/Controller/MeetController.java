package springweb.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.Service.MeetService;
import springweb.vo.Meet_Post;
import springweb.vo.PageMaker;

@Controller
public class MeetController {
	@Autowired
	private MeetService service;

	@RequestMapping("/meet.do")
	public String MeetList(@RequestParam(value="startPage" , defaultValue="1") int startPage, Model d) {
		PageMaker pm = new PageMaker();
		if(startPage > 1) {
			pm.setStartPage((startPage-1)*pm.getDisplayPageNum()+1);
			pm.setEndPage(startPage*pm.getDisplayPageNum());
		}else {
			pm.setStartPage(startPage);
		}
		ArrayList<Meet_Post> map = service.getMeetList(pm);
		int count = service.getMeetListTotal(pm);
		d.addAttribute("MeetList", map);
		d.addAttribute("recordTotal", count); // 15
		d.addAttribute("recordCount", pm.getDisplayPageNum()); // 10


		return "meet";
	}


}