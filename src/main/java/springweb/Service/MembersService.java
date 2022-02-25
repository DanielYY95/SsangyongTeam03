package springweb.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.MembersDao;
import springweb.vo.Members;

@Service
public class MembersService {
	
	@Autowired
	private MembersDao dao;
	
	public List<Members> getMembersList(Members sch){
		return dao.getMembersList(sch);
	}
	
	public void insertMembers (Members ins){
		dao.insertMembers(ins);
	}
	public Members login(Members login) {
		return dao.login(login);
	}
}