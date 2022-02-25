package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.ScoutDao;
import springweb.vo.PageMaker;
import springweb.vo.Scout_Post;

@Service
public class ScoutService {

	@Autowired
	private ScoutDao dao;

	public ArrayList<Scout_Post> getScoutList(PageMaker pm){
		return dao.getScoutList(pm);
	}

	public int getScoutListTotal(PageMaker pm){
		return dao.getScoutListTotal(pm);
	}
}