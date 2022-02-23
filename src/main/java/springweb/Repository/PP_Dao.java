package springweb.Repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.vo.Pro_Comment;
import springweb.vo.Pro_Like;
import springweb.vo.Pro_Pics;

@Repository
public interface PP_Dao {
	
	
	// 1. 전체 조회리스트
	public ArrayList<Pro_Pics> getPPList();
	
	
	// 2. 게시물 읽기
	public Pro_Pics getPP(String id); // pp_id가 아직 미정....
	
	
	// 3. 정렬기준 조회리스트 => order by 대신 인덱스를 사용하라?
	public ArrayList<Pro_Pics> getPPListF(String comparator);
	
	
	// 4. 지역명 조회리스트
	public ArrayList<Pro_Pics> getPPListP(String place);
	
	
	// 5. 태그별 조회리스트
	public ArrayList<Pro_Pics> getPPListC(String category);
	
	
	// 6. 게시물 등록
	public void insertPP(Pro_Pics ins);
	
	// 7. 게시물 삭제
	public void deletePP(String id);
	
	
	// 8. 게시물 수정
	public void updatePP(Pro_Pics ins);
	
	
	// 9. 댓글 불러오기
	public ArrayList<Pro_Comment> getPPComment(String ppId); 
	// 게시물의 고유번호가 매개변수가 되어야한다.
	
	// 10. 댓글 등록
	public void insertPPComment(Pro_Comment ins);
	
	// 11. 댓글 삭제
	public void deletePPComment(String id);
	
	// 12. 좋아요 수 불러오기
	public int getPPLikeCnt(String ppId); 
	// 게시물의 고유번호를 갖고 댓글 수 가져오기
	
	// 13. 좋아요 등록
	public void insertPPLike(Pro_Like ins);
	// 아래 14번을 등록할 때 controller 단 if문 안에 넣어 체크하면 될듯
	// 이미 등록한 게 확인 됬을 때(true) => 15번 좋아요 삭제 진행
		// 이걸 confirm까지 진행할 수도 있긴 하나....
	// 
	
	// 14. 좋아요 등록여부 체크
	public int hasPPLike(Pro_Like ins); 
	// 게시물id와 유저 id를 검색했을 때 확인
	// sql문은 아마 count(*) 했을 때 1이면 취소, 0이면 등록 그대로 진행
	
	
	// 15. 좋아요 삭제
	public void deletePPLike(Pro_Like ins);
	
	
	// 16. 조회수 증가
	public void addPPView(String ppId);
	
	// 17. 댓글 수 불러오기
	public int getPPCommentCnt(String ppId);
	
	
}

