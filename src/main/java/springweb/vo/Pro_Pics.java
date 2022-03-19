package springweb.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Pro_Pics {

	private String ppId;
	private String ppTitle;
	private String ppContent;
	private String ppPhoto;
	private String ppCategory;
	private String ppHash;
	private String ppPlace;
	private int ppView;
	private Date ppDate;
	private String ppUser; 
	private int ppLikecnt;
	private MultipartFile ppFile;
	
	
	
	public String getPpPhoto() {
		return ppPhoto;
	}



	public void setPpPhoto(String ppPhoto) {
		this.ppPhoto = ppPhoto;
	}



	public MultipartFile getPpFile() {
		return ppFile;
	}



	public void setPpFile(MultipartFile ppFile) {
		this.ppFile = ppFile;
	}



	public int getPpLikecnt() {
		return ppLikecnt;
	}



	public void setPpLikecnt(int ppLikecnt) {
		this.ppLikecnt = ppLikecnt;
	}



	public Pro_Pics() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getPpUser() {
		return ppUser;
	}

	public void setPpUser(String ppUser) {
		this.ppUser = ppUser;
	}
	
	
	
	
}
