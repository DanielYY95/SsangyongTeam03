package springweb.vo;

import java.util.Date;

public class Interview {
	private String ivId;
	private String ivKind;
	private Date ivDate;
	private String ivPhoto;
	private String ivTitle;
	private String ivContent;
	public Interview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Interview(String ivId, String ivKind, Date ivDate, String ivPhoto, String ivTitle, String ivContent) {
		super();
		this.ivId = ivId;
		this.ivKind = ivKind;
		this.ivDate = ivDate;
		this.ivPhoto = ivPhoto;
		this.ivTitle = ivTitle;
		this.ivContent = ivContent;
	}
	public String getIvId() {
		return ivId;
	}
	public void setIvId(String ivId) {
		this.ivId = ivId;
	}
	public String getIvKind() {
		return ivKind;
	}
	public void setIvKind(String ivKind) {
		this.ivKind = ivKind;
	}
	public Date getIvDate() {
		return ivDate;
	}
	public void setIvDate(Date ivDate) {
		this.ivDate = ivDate;
	}
	public String getIvPhoto() {
		return ivPhoto;
	}
	public void setIvPhoto(String ivPhoto) {
		this.ivPhoto = ivPhoto;
	}
	public String getIvTitle() {
		return ivTitle;
	}
	public void setIvTitle(String ivTitle) {
		this.ivTitle = ivTitle;
	}
	public String getIvContent() {
		return ivContent;
	}
	public void setIvContent(String ivContent) {
		this.ivContent = ivContent;
	}
	
}
