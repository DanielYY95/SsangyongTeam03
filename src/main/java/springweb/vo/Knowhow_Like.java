package springweb.vo;

public class Knowhow_Like {
	
	private String klId;
	private String klUser;
	private String kpId;
	
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
