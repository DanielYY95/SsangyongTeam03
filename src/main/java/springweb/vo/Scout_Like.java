package springweb.vo;

public class Scout_Like {
	private String slId;
	private String slUser;
	private String spId;
	public Scout_Like() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Scout_Like(String slId, String slUser, String spId) {
		super();
		this.slId = slId;
		this.slUser = slUser;
		this.spId = spId;
	}
	public String getSlId() {
		return slId;
	}
	public void setSlId(String slId) {
		this.slId = slId;
	}
	public String getSlUser() {
		return slUser;
	}
	public void setSlUser(String slUser) {
		this.slUser = slUser;
	}
	public String getSpId() {
		return spId;
	}
	public void setSpId(String spId) {
		this.spId = spId;
	}

}
