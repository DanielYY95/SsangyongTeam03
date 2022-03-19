package springweb.Repository;

import java.util.ArrayList;

import springweb.vo.Knowhow_Comment;
import springweb.vo.Knowhow_Post;
import springweb.vo.Local_Like;

public interface KP_Dao {

	
	
	// 1. 전체 리스트
	public ArrayList<Knowhow_Post> getKPList();
	
	// 2. 정렬 조회
	public ArrayList<Knowhow_Post> getKPListF(String comparator);
	
	
	// 3. 제목 검색 조회 리스트
	public ArrayList<Knowhow_Post> getKPListT(String title);
	
	
	// 4. 글쓴이 검색 조회 리스트

	public ArrayList<Knowhow_Post> getKPListU(String name); // U: 유저, 사람
	
	
	
	// 5. 클릭 시 글 상세정보	
	public Knowhow_Post getKP(String id);
	
	// 6. 게시물 등록
	public void insertKP(Knowhow_Post ins);
	
	// 7. 게시물 삭제
	public void deleteKP(String id);
	
	
	// 8. 게시물 수정
	public Knowhow_Post updateKP(Knowhow_Post ins);
	
	
	// 9. 댓글 불러오기
	public ArrayList<Knowhow_Comment> getKPComment(String kpId); 
	// 게시물의 고유번호가 매개변수가 되어야한다.
	
	// 10. 댓글 등록
	public void insertKPComment(Knowhow_Comment ins);
	
	// 11. 댓글 삭제
	public void deleteKPComment(String id);
	
	// 12. 좋아요 수 불러오기
	public int getKPLikeCnt(String kpId); 
	// 게시물의 고유번호를 갖고 댓글 수 가져오기
	
	// 13. 좋아요 등록
	public void insertKPLike(Local_Like ins);
	// 아래 14번을 등록할 때 controller 단 if문 안에 넣어 체크하면 될듯
	// 이미 등록한 게 확인 됬을 때(true) => 15번 좋아요 삭제 진행
		// 이걸 confirm까지 진행할 수도 있긴 하나....
	// 
	
	// 14. 좋아요 등록여부 체크
	public boolean hasKPLike(String kpId, String klUser); 
	// 게시물id와 유저 id를 검색했을 때 확인
	// sql문은 아마 count(*) 했을 때 1이면 취소, 0이면 등록 그대로 진행
	
	
	// 15. 좋아요 삭제
	public void deleteKPLike(String kpId, String klUser);
	
	
	// 16. 조회수 증가
	public void addKPView(String kpId);
	
	
}
