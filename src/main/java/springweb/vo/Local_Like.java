package springweb.vo;

public class Local_Like {
	
	private String llId;
	private String llUser;
	private String lpId;
	
	public Local_Like() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Local_Like(String llId, String llUser, String lpId) {
		super();
		this.llId = llId;
		this.llUser = llUser;
		this.lpId = lpId;
	}

	public String getLlId() {
		return llId;
	}

	public void setLlId(String llId) {
		this.llId = llId;
	}

	public String getLlUser() {
		return llUser;
	}

	public void setLlUser(String llUser) {
		this.llUser = llUser;
	}

	public String getLpId() {
		return lpId;
	}

	public void setLpId(String lpId) {
		this.lpId = lpId;
	}
	
	
	
}
