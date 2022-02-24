package springweb.DAO;


import java.util.List;

import org.springframework.stereotype.Repository;


import springweb.vo.Members;

@Repository
public interface MembersDao {
	public List<Members> getMembersList(Members sch);
	public void insertMembers (Members ins);
	public Members login(Members login);
	
}
