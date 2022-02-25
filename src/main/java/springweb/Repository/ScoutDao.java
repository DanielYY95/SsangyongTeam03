package springweb.Repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.vo.PageMaker;
import springweb.vo.Scout_Post;

@Repository
public interface ScoutDao {

	public ArrayList<Scout_Post> getScoutList(PageMaker pm);
	public int getScoutListTotal(PageMaker pm);

}