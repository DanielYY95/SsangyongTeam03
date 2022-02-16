package springweb.vo;

import java.util.Date;

public class Knowhow_Comment {

	
	private String kcId;
	private String kcUser;
	private String kcContent;
	private Date kcDate;
	private String kpId;
	
	public Knowhow_Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Knowhow_Comment(String kcId, String kcUser, String kcContent, Date kcDate, String kpId) {
		super();
		this.kcId = kcId;
		this.kcUser = kcUser;
		this.kcContent = kcContent;
		this.kcDate = kcDate;
		this.kpId = kpId;
	}

	public String getKcId() {
		return kcId;
	}

	public void setKcId(String kcId) {
		this.kcId = kcId;
	}

	public String getKcUser() {
		return kcUser;
	}

	public void setKcUser(String kcUser) {
		this.kcUser = kcUser;
	}

	public String getKcContent() {
		return kcContent;
	}

	public void setKcContent(String kcContent) {
		this.kcContent = kcContent;
	}

	public Date getKcDate() {
		return kcDate;
	}

	public void setKcDate(Date kcDate) {
		this.kcDate = kcDate;
	}

	public String getKpId() {
		return kpId;
	}

	public void setKpId(String kpId) {
		this.kpId = kpId;
	}
	
	
	
	
}
