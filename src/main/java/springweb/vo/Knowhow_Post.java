package springweb.vo;

import java.util.Date;

public class Knowhow_Post {
	private String kpId;
	private String kpTitle;
	private String kpContent;
	private int kpView;
	private Date kpDate;
	private String kpUser;
	public Knowhow_Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Knowhow_Post(String kpId, String kpTitle, String kpContent, int kpView, Date kpDate, String kpUser) {
		super();
		this.kpId = kpId;
		this.kpTitle = kpTitle;
		this.kpContent = kpContent;
		this.kpView = kpView;
		this.kpDate = kpDate;
		this.kpUser = kpUser;
	}
	public String getKpId() {
		return kpId;
	}
	public void setKpId(String kpId) {
		this.kpId = kpId;
	}
	public String getKpTitle() {
		return kpTitle;
	}
	public void setKpTitle(String kpTitle) {
		this.kpTitle = kpTitle;
	}
	public String getKpContent() {
		return kpContent;
	}
	public void setKpContent(String kpContent) {
		this.kpContent = kpContent;
	}
	public int getKpView() {
		return kpView;
	}
	public void setKpView(int kpView) {
		this.kpView = kpView;
	}
	public Date getKpDate() {
		return kpDate;
	}
	public void setKpDate(Date kpDate) {
		this.kpDate = kpDate;
	}
	public String getKpUser() {
		return kpUser;
	}
	public void setKpUser(String kpUser) {
		this.kpUser = kpUser;
	}
	
}