package springweb.Repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import springweb.vo.Contest;

@Repository
public interface ContestDao {
	public List<Contest> getContestList(Contest sch);

}