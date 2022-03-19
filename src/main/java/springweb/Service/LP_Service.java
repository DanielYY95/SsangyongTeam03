package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import springweb.Repository.LP_Dao;
import springweb.vo.Local_Comment;
import springweb.vo.Local_Like;
import springweb.vo.Local_Pics;
import springweb.vo.Pro_Pics;

public class LP_Service {
	
	@Autowired
	private LP_Dao dao;
	
	
	// 1. 전체 조회리스트
	public ArrayList<Local_Pics> getLPList(){
		
		return dao.getLPList();
	};
	
	
	// 2. 게시물 읽기
	public Pro_Pics getLP(String id){
		
		return dao.getLP(id);
	};
	
	
	
	// 3. 정렬기준 조회리스트 => order by 대신 인덱스를 사용하라?
	public ArrayList<Local_Pics> getLPListF(String comparator){
		
		return dao.getLPListF(comparator);
	};
	
	
	// 4. 지역명 조회리스트
	public ArrayList<Local_Pics> getLPListP(String place){
		
		return dao.getLPListP(place);
	};
	
	
	
	// 5. 태그별 조회리스트
	public ArrayList<Local_Pics> getLPListC(String category){
		
		return dao.getLPListC(category);
	};
	
	
	
	// 6. 게시물 등록
	public void insertLP(Local_Pics ins) {
		dao.insertLP(ins);
	};
	
	// 7. 게시물 삭제
	public void deleteLP(String id) {
		dao.deleteLP(id);
	};
	
	
	// 8. 게시물 수정
	public Local_Pics updateLP(Local_Pics ins){
		
		return dao.updateLP(ins);
	};
	
	
	
	// 9. 댓글 불러오기
	public ArrayList<Local_Comment> getLPComment(String lpId){
		
		return dao.getLPComment(lpId);
	};
	
	
	// 10. 댓글 등록
	public void insertLPComment(Local_Comment ins) {
		dao.insertLPComment(ins);
	};
	
	// 11. 댓글 삭제
	public void deleteLPComment(String id) {
		dao.deleteLPComment(id);
	};
	
	// 12. 좋아요 수 불러오기
	public int getLPLikeCnt(String lpId){
		
		return dao.getLPLikeCnt(lpId);
	};
	
	// 13. 좋아요 등록
	public void insertLPLike(Local_Like ins){
		dao.insertLPLike(ins);
	};
	
	// 14. 좋아요 등록여부 체크
	public boolean hasLPLike(String lpId, String llUser){
		
		return dao.hasLPLike(lpId, llUser);
	};
	
	// 15. 좋아요 삭제
	public void deleteLPLike(String lpId, String llUser) {
		dao.deleteLPLike(lpId, llUser);
	}
	
	// 16. 조회수 증가
	public void addLPView(String lpId) {
		dao.addLPView(lpId);
	}
	
}
