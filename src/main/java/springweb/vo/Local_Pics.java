package springweb.vo;

import java.util.Date;

public class Local_Pics {
	
	private String lpId;
	private String lpTitle;
	private String lpContent;
	private String lpPhoto;
	private String lpCategory;
	private String lpHash;
	private String lpPlace;
	private int lpView;
	private Date lpDate;
	private String lpUser;
	
	public Local_Pics() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Local_Pics(String lpId, String lpTitle, String lpContent, String lpPhoto, String lpCategory, String lpHash,
			String lpPlace, int lpView, Date lpDate, String lpUser) {
		super();
		this.lpId = lpId;
		this.lpTitle = lpTitle;
		this.lpContent = lpContent;
		this.lpPhoto = lpPhoto;
		this.lpCategory = lpCategory;
		this.lpHash = lpHash;
		this.lpPlace = lpPlace;
		this.lpView = lpView;
		this.lpDate = lpDate;
		this.lpUser = lpUser;
	}

	public String getLpId() {
		return lpId;
	}

	public void setLpId(String lpId) {
		this.lpId = lpId;
	}

	public String getLpTitle() {
		return lpTitle;
	}

	public void setLpTitle(String lpTitle) {
		this.lpTitle = lpTitle;
	}

	public String getLpContent() {
		return lpContent;
	}

	public void setLpContent(String lpContent) {
		this.lpContent = lpContent;
	}

	public String getLpPhoto() {
		return lpPhoto;
	}

	public void setLpPhoto(String lpPhoto) {
		this.lpPhoto = lpPhoto;
	}

	public String getLpCategory() {
		return lpCategory;
	}

	public void setLpCategory(String lpCategory) {
		this.lpCategory = lpCategory;
	}

	public String getLpHash() {
		return lpHash;
	}

	public void setLpHash(String lpHash) {
		this.lpHash = lpHash;
	}

	public String getLpPlace() {
		return lpPlace;
	}

	public void setLpPlace(String lpPlace) {
		this.lpPlace = lpPlace;
	}

	public int getLpView() {
		return lpView;
	}

	public void setLpView(int lpView) {
		this.lpView = lpView;
	}

	public Date getLpDate() {
		return lpDate;
	}

	public void setLpDate(Date lpDate) {
		this.lpDate = lpDate;
	}

	public String getLpUser() {
		return lpUser;
	}

	public void setLpUser(String lpUser) {
		this.lpUser = lpUser;
	}

	
	
	
}
