package springweb.vo;

public class Pro_Like {
	
	private String plId;
	private String plUser;
	private String ppId;
	
	public Pro_Like() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pro_Like(String plId, String plUser, String ppId) {
		super();
		this.plId = plId;
		this.plUser = plUser;
		this.ppId = ppId;
	}

	public String getPlId() {
		return plId;
	}

	public void setPlId(String plId) {
		this.plId = plId;
	}

	public String getPlUser() {
		return plUser;
	}

	public void setPlUser(String plUser) {
		this.plUser = plUser;
	}

	public String getPpId() {
		return ppId;
	}

	public void setPpId(String ppId) {
		this.ppId = ppId;
	}

	
	
}
