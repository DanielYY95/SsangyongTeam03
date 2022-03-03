package springweb.Repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.vo.Knowhow_Post;
import springweb.vo.PageMaker;

@Repository
public interface KnowhowDao {

	public ArrayList<Knowhow_Post> getKnowhowList(PageMaker pm);
	public int getKnowhowListTotal(PageMaker pm);

}