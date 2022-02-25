package springweb.vo;

import java.util.Date;

public class Contest {
	private String ctId;
	private String ctTitle;
	private String ctPreviewPhoto;
	private String ctPopupContent;
	private Date ctRegDate;
	private Date ctCloseDate;
	public Contest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contest(String ctId, String ctTitle, String ctPreviewPhoto, String ctPopupContent, Date ctRegDate,
			Date ctCloseDate) {
		super();
		this.ctId = ctId;
		this.ctTitle = ctTitle;
		this.ctPreviewPhoto = ctPreviewPhoto;
		this.ctPopupContent = ctPopupContent;
		this.ctRegDate = ctRegDate;
		this.ctCloseDate = ctCloseDate;
	}
	public String getCtId() {
		return ctId;
	}
	public void setCtId(String ctId) {
		this.ctId = ctId;
	}
	public String getCtTitle() {
		return ctTitle;
	}
	public void setCtTitle(String ctTitle) {
		this.ctTitle = ctTitle;
	}
	public String getCtPreviewPhoto() {
		return ctPreviewPhoto;
	}
	public void setCtPreviewPhoto(String ctPreviewPhoto) {
		this.ctPreviewPhoto = ctPreviewPhoto;
	}
	public String getCtPopupContent() {
		return ctPopupContent;
	}
	public void setCtPopupContent(String ctPopupContent) {
		this.ctPopupContent = ctPopupContent;
	}
	public Date getCtRegDate() {
		return ctRegDate;
	}
	public void setCtRegDate(Date ctRegDate) {
		this.ctRegDate = ctRegDate;
	}
	public Date getCtCloseDate() {
		return ctCloseDate;
	}
	public void setCtCloseDate(Date ctCloseDate) {
		this.ctCloseDate = ctCloseDate;
	}

}
