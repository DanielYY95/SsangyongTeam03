package springweb.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.ContestDao;
import springweb.vo.Contest;

@Service
public class ContestService {
	@Autowired
	private ContestDao dao;

	public List<Contest> getContestList(Contest sch){
		return dao.getContestList(sch);
	}

}