package springweb.Repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.vo.Contest;
import springweb.vo.PageMaker;

@Repository
public interface ContestDao {
	public ArrayList<Contest> getContestList(PageMaker pm);
	public int getContestListTotal(PageMaker pm);
}