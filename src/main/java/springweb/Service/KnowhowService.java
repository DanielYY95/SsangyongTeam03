package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.KnowhowDao;
import springweb.vo.Knowhow_Post;
import springweb.vo.PageMaker;

@Service
public class KnowhowService {

	@Autowired
	private KnowhowDao dao;

	public ArrayList<Knowhow_Post> getKnowhowList(PageMaker pm){
		return dao.getKnowhowList(pm);
	}

	public int getKnowhowListTotal(PageMaker pm){
		return dao.getKnowhowListTotal(pm);
	}
}