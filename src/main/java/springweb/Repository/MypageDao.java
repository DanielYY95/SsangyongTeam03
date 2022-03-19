package springweb.Repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.vo.Pro_Pics;

@Repository
public interface MypageDao {
	
	ArrayList<Pro_Pics> myPostList(String ppUser);
	ArrayList<Pro_Pics> myLikeList(String ppUser);
	
}
