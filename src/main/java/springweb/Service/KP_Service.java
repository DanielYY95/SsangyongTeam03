package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import springweb.Repository.KP_Dao;
import springweb.vo.Knowhow_Comment;
import springweb.vo.Knowhow_Post;
import springweb.vo.Local_Like;

public class KP_Service {

	@Autowired
	private KP_Dao dao;
	
	// 1. 전체 리스트
	public ArrayList<Knowhow_Post> getKPList(){
		
		return dao.getKPList();
	};
	
	// 2. 정렬 조회
	public ArrayList<Knowhow_Post> getKPListF(String comparator){
		
		return dao.getKPListF(comparator);
	};
	
	
	// 3. 제목 검색 조회 리스트
	public ArrayList<Knowhow_Post> getKPListT(String title){
		
		return dao.getKPListT(title);
	};
	
	
	// 4. 글쓴이 검색 조회 리스트

	public ArrayList<Knowhow_Post> getKPListU(String name){
		
		return dao.getKPListU(name);
	};
	
	
	// 5. 클릭 시 글 상세정보	
	public Knowhow_Post getKP(String id){
		
		return dao.getKP(id);
	};
	
	// 6. 게시물 등록
	public void insertKP(Knowhow_Post ins){
		
		dao.insertKP(ins);
	};
	
	// 7. 게시물 삭제
	public void deleteKP(String id) {
		dao.deleteKP(id);
	}
	
	
	// 8. 게시물 수정
	public Knowhow_Post updateKP(Knowhow_Post ins){
		
		return dao.updateKP(ins);
	};
	
	
	// 9. 댓글 불러오기
	public ArrayList<Knowhow_Comment> getKPComment(String kpId){
		
		return dao.getKPComment(kpId);
	};
	
	// 10. 댓글 등록
	public void insertKPComment(Knowhow_Comment ins) {
		
		dao.insertKPComment(ins);
	}
	
	// 11. 댓글 삭제
	public void deleteKPComment(String id) {
		dao.deleteKPComment(id);
	}
	
	// 12. 좋아요 수 불러오기
	public int getKPLikeCnt(String kpId){
		
		return dao.getKPLikeCnt(kpId);
	};
	
	// 13. 좋아요 등록
	public void insertKPLike(Local_Like ins){
		dao.insertKPLike(ins);
	}
	
	// 14. 좋아요 등록여부 체크
	public boolean hasKPLike(String kpId, String mId){


		return dao.hasKPLike(kpId, mId);
	}
	
	// 15. 좋아요 삭제
	public void deleteKPLike(String kpId, String mId){
		
		dao.deleteKPLike(kpId, mId);
	};
	
	
	
}
