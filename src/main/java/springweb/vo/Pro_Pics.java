package springweb.vo;

import java.util.Date;

public class Pro_Pics {

	private String ppId;
	private String ppTitle;
	private String ppContent;
	private String ppPhoto;
	private String ppCategory;
	private String ppHash;
	private String ppPlace;
	private int ppLike;
	private int ppView;
	private Date ppDate;
	private String mId;
	
	public Pro_Pics() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pro_Pics(String ppId, String ppTitle, String ppContent, String ppPhoto, String ppCategory, String ppHash,
			String ppPlace, int ppLike, int ppView, Date ppDate, String mId) {
		super();
		this.ppId = ppId;
		this.ppTitle = ppTitle;
		this.ppContent = ppContent;
		this.ppPhoto = ppPhoto;
		this.ppCategory = ppCategory;
		this.ppHash = ppHash;
		this.ppPlace = ppPlace;
		this.ppLike = ppLike;
		this.ppView = ppView;
		this.ppDate = ppDate;
		this.mId = mId;
	}

	public String getPpId() {
		return ppId;
	}

	public void setPpId(String ppId) {
		this.ppId = ppId;
	}

	public String getPpTitle() {
		return ppTitle;
	}

	public void setPpTitle(String ppTitle) {
		this.ppTitle = ppTitle;
	}

	public String getPpContent() {
		return ppContent;
	}

	public void setPpContent(String ppContent) {
		this.ppContent = ppContent;
	}

	public String getPpPhoto() {
		return ppPhoto;
	}

	public void setPpPhoto(String ppPhoto) {
		this.ppPhoto = ppPhoto;
	}

	public String getPpCategory() {
		return ppCategory;
	}

	public void setPpCategory(String ppCategory) {
		this.ppCategory = ppCategory;
	}

	public String getPpHash() {
		return ppHash;
	}

	public void setPpHash(String ppHash) {
		this.ppHash = ppHash;
	}

	public String getPpPlace() {
		return ppPlace;
	}

	public void setPpPlace(String ppPlace) {
		this.ppPlace = ppPlace;
	}

	public int getPpLike() {
		return ppLike;
	}

	public void setPpLike(int ppLike) {
		this.ppLike = ppLike;
	}

	public int getPpView() {
		return ppView;
	}

	public void setPpView(int ppView) {
		this.ppView = ppView;
	}

	public Date getPpDate() {
		return ppDate;
	}

	public void setPpDate(Date ppDate) {
		this.ppDate = ppDate;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}
	
	
	
	
	
}
