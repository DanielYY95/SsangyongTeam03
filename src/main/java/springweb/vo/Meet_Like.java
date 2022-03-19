package springweb.vo;

public class Meet_Like {
	private String mlId;
	private String mlUser;
	private String mpId;
	public Meet_Like() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Meet_Like(String mlId, String mlUser, String mpId) {
		super();
		this.mlId = mlId;
		this.mlUser = mlUser;
		this.mpId = mpId;
	}
	public String getMlId() {
		return mlId;
	}
	public void setMlId(String mlId) {
		this.mlId = mlId;
	}
	public String getMlUser() {
		return mlUser;
	}
	public void setMlUser(String mlUser) {
		this.mlUser = mlUser;
	}
	public String getMpId() {
		return mpId;
	}
	public void setMpId(String mpId) {
		this.mpId = mpId;
	}

}
