package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.ContestDao;
import springweb.vo.Contest;
import springweb.vo.PageMaker;

@Service
public class ContestService {
	@Autowired
	private ContestDao dao;

	public ArrayList<Contest> getContestList(PageMaker pm){
		return dao.getContestList(pm);
	}
	public int getContestListTotal(PageMaker pm){
		return dao.getContestListTotal(pm);
	}
}