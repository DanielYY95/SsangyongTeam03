package springweb.Repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.vo.Meet_Post;
import springweb.vo.PageMaker;

@Repository
public interface MeetDao {

	public ArrayList<Meet_Post> getMeetList(PageMaker pm);
	public int getMeetListTotal(PageMaker pm);

}