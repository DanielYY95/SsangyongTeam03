package springweb.vo;

import java.util.Date;

public class Scout_Post {
	private String spId;
	private String spTitle;
	private String spContent;
	private int spView;
	private Date spDate;
	private String spUser;
	public Scout_Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Scout_Post(String spId, String spTitle, String spContent, int spView, Date spDate, String spUser) {
		super();
		this.spId = spId;
		this.spTitle = spTitle;
		this.spContent = spContent;
		this.spView = spView;
		this.spDate = spDate;
		this.spUser = spUser;
	}

	public String getSpId() {
		return spId;
	}
	public void setSpId(String spId) {
		this.spId = spId;
	}
	public String getSpTitle() {
		return spTitle;
	}
	public void setSpTitle(String spTitle) {
		this.spTitle = spTitle;
	}
	public String getSpContent() {
		return spContent;
	}
	public void setSpContent(String spContent) {
		this.spContent = spContent;
	}
	public int getSpView() {
		return spView;
	}
	public void setSpView(int spView) {
		this.spView = spView;
	}
	public Date getSpDate() {
		return spDate;
	}
	public void setSpDate(Date spDate) {
		this.spDate = spDate;
	}
	public String getSpUser() {
		return spUser;
	}
	public void setSpUser(String spUser) {
		this.spUser = spUser;
	}

}
