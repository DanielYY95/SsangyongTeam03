package springweb.Repository;


import java.util.List;

import org.springframework.stereotype.Repository;

import springweb.vo.Members;

@Repository
public interface MembersDao {
	public List<Members> getMembersList(Members sch);
	public Members reg(Members reg);
	public void insertMembers (Members ins);
	public Members login(Members login);
	public void updateMypage(Members upt);
	public int idChk(Members ins);
	public int nickChk(Members ins);
}