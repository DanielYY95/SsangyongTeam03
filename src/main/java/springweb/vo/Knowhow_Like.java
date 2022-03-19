package springweb.vo;

public class Knowhow_Like {
	
	
	//	<c:set var="id" id="${id}"> => 지금 로그인한 나의 아이디

			
	// getPost(String PID)		
	// 게시물 누르면 그 게시물의 ID => <c:set var="postid" id="${PID}" scope="pageContext"> 

	//	private checkreg(String id);
	//	
	//	private checkComment(String kpid, String kiuser);
	//	
	//	select count(*) from Knowhow_like where kpid =#{kpid} and  kiuser= #{kiuser}
	//	=> 1 이면 => 이미 등록 => 등록 취소
	//	=> 0 이면 등록 x => 등록 실시
		
	private String klId; // 좋아요 고유번호 => sequence
	private String klUser; // 좋아요 등록자ID => 1. 좋아요 취소 + 좋아요 중복확인 2. 마이페이지 좋아요 글 확인
	private String kpId; // 게시물ID
	
	public Knowhow_Like() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Knowhow_Like(String klId, String klUser, String kpId) {
		super();
		this.klId = klId;
		this.klUser = klUser;
		this.kpId = kpId;
	}

	public String getKlId() {
		return klId;
	}

	public void setKlId(String klId) {
		this.klId = klId;
	}

	public String getKlUser() {
		return klUser;
	}

	public void setKlUser(String klUser) {
		this.klUser = klUser;
	}

	public String getKpId() {
		return kpId;
	}

	public void setKpId(String kpId) {
		this.kpId = kpId;
	}
	
	
	
	
}
