package springweb.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import springweb.Repository.PP_Dao;
import springweb.vo.Pro_Comment;
import springweb.vo.Pro_Like;
import springweb.vo.Pro_Pics;

public class PP_Service {
	
	@Autowired
	private PP_Dao dao;
	
	// 1. 전체 조회리스트
		public ArrayList<Pro_Pics> getPPList(){
			
			return dao.getPPList();
		};
		
		
		// 2. 게시물 읽기
		public Pro_Pics getPP(String id){
			
			return dao.getPP(id);
		};
		// 3. 정렬기준 조회리스트 => order by 대신 인덱스를 사용하라?
		public ArrayList<Pro_Pics> getPPListF(String comparator){
			
			return dao.getPPListF(comparator);
		};
		
		// 4. 지역명 조회리스트
		public ArrayList<Pro_Pics> getPPListP(String place){
			
			return dao.getPPListP(place);
		};
		
		// 5. 태그별 조회리스트
		public ArrayList<Pro_Pics> getPPListC(String category){
			
			return dao.getPPListC(category);
		};
		
		
		// 6. 게시물 등록
		public void insertPP(Pro_Pics ins) {
			
			dao.insertPP(ins);
		}
		
		// 7. 게시물 삭제
		public void deletePP(String id) {
			
			dao.deletePP(id);
		}
		
		
		// 8. 게시물 수정
		public Pro_Pics updatePP(Pro_Pics ins) {
			
			return dao.updatePP(ins);
		}
		
		
		// 9. 댓글 불러오기
		public ArrayList<Pro_Comment> getPPComment(String ppId){
			
			return dao.getPPComment(ppId);
		}; 
	
		
		// 10. 댓글 등록
		public void insertPPComment(Pro_Comment ins) {
			
			dao.insertPPComment(ins);
		}
		
		// 11. 댓글 삭제
		public void deletePPComment(String id) {
			
			dao.deletePPComment(id);
		}
		
		// 12. 좋아요 수 불러오기
		public int getPPLikeCnt(String ppId){
			
			return dao.getPPLikeCnt(ppId);
		}
		
		// 13. 좋아요 등록
		public void insertPPLike(Pro_Like ins){
			
			dao.insertPPLike(ins);
		};

		
		// 14. 좋아요 등록여부 체크
		public boolean hasPPLike(String ppId, String mId) {
			
			return dao.hasPPLike(ppId, mId);
		}

		
		// 15. 좋아요 삭제
		public void deletePPLike(String ppId, String mId) {
			
			dao.deletePPLike(ppId, mId);
		}
		
	
	
	

}
