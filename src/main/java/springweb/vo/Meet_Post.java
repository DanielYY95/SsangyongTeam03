package springweb.vo;

import java.util.Date;

public class Meet_Post {
	private String mpId;
	private String mpTitle;
	private String mpContent;
	private int mpView;
	private Date mpDate;
	private String mpUser;
	public Meet_Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Meet_Post(String mpId, String mpTitle, String mpContent, int mpView, Date mpDate, String mpUser) {
		super();
		this.mpId = mpId;
		this.mpTitle = mpTitle;
		this.mpContent = mpContent;
		this.mpView = mpView;
		this.mpDate = mpDate;
		this.mpUser = mpUser;
	}
	public String getMpId() {
		return mpId;
	}
	public void setMpId(String mpId) {
		this.mpId = mpId;
	}
	public String getMpTitle() {
		return mpTitle;
	}
	public void setMpTitle(String mpTitle) {
		this.mpTitle = mpTitle;
	}
	public String getMpContent() {
		return mpContent;
	}
	public void setMpContent(String mpContent) {
		this.mpContent = mpContent;
	}
	public int getMpView() {
		return mpView;
	}
	public void setMpView(int mpView) {
		this.mpView = mpView;
	}
	public Date getMpDate() {
		return mpDate;
	}
	public void setMpDate(Date mpDate) {
		this.mpDate = mpDate;
	}
	public String getMpUser() {
		return mpUser;
	}
	public void setMpUser(String mpUser) {
		this.mpUser = mpUser;
	}
	
}
