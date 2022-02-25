package springweb.vo;

import java.util.Date;

public class Scout_Comment {
	private String scId;
	private String scContent;
	private Date scDate;
	private String scUser;
	private String spId;
	public Scout_Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Scout_Comment(String scId, String scContent, Date scDate, String scUser, String spId) {
		super();
		this.scId = scId;
		this.scContent = scContent;
		this.scDate = scDate;
		this.scUser = scUser;
		this.spId = spId;
	}
	public String getScId() {
		return scId;
	}
	public void setScId(String scId) {
		this.scId = scId;
	}
	public String getScContent() {
		return scContent;
	}
	public void setScContent(String scContent) {
		this.scContent = scContent;
	}
	public Date getScDate() {
		return scDate;
	}
	public void setScDate(Date scDate) {
		this.scDate = scDate;
	}
	public String getScUser() {
		return scUser;
	}
	public void setScUser(String scUser) {
		this.scUser = scUser;
	}
	public String getSpId() {
		return spId;
	}
	public void setSpId(String spId) {
		this.spId = spId;
	}

}
