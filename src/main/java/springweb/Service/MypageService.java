package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.Repository.MypageDao;
import springweb.vo.Pro_Pics;

@Service
public class MypageService {
	
	@Autowired
	MypageDao dao;
	
	
	public ArrayList<Pro_Pics> myPostList(String ppUser){
		
		return dao.myPostList(ppUser);
	};
	public ArrayList<Pro_Pics> myLikeList(String ppUser){
		
		return dao.myLikeList(ppUser);
	};
	
}
