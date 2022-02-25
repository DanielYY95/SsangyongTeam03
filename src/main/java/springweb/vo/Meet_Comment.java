package springweb.vo;

import java.util.Date;

public class Meet_Comment {
	private String mcId;
	private String mcContent;
	private Date mcDate;
	private String mcUser;
	private String mpId;
	public Meet_Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Meet_Comment(String mcId, String mcContent, Date mcDate, String mcUser, String mpId) {
		super();
		this.mcId = mcId;
		this.mcContent = mcContent;
		this.mcDate = mcDate;
		this.mcUser = mcUser;
		this.mpId = mpId;
	}
	public String getMcId() {
		return mcId;
	}
	public void setMcId(String mcId) {
		this.mcId = mcId;
	}
	public String getMcContent() {
		return mcContent;
	}
	public void setMcContent(String mcContent) {
		this.mcContent = mcContent;
	}
	public Date getMcDate() {
		return mcDate;
	}
	public void setMcDate(Date mcDate) {
		this.mcDate = mcDate;
	}
	public String getMcUser() {
		return mcUser;
	}
	public void setMcUser(String mcUser) {
		this.mcUser = mcUser;
	}
	public String getMpId() {
		return mpId;
	}
	public void setMpId(String mpId) {
		this.mpId = mpId;
	}

}
