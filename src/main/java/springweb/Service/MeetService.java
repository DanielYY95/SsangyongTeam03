package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.MeetDao;
import springweb.vo.Meet_Post;
import springweb.vo.PageMaker;

@Service
public class MeetService {

	@Autowired
	private MeetDao dao;

	public ArrayList<Meet_Post> getMeetList(PageMaker pm){
		return dao.getMeetList(pm);
	}

	public int getMeetListTotal(PageMaker pm){
		return dao.getMeetListTotal(pm);
	}
}