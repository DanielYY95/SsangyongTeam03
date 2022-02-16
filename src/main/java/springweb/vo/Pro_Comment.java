package springweb.vo;

import java.util.Date;

public class Pro_Comment {

	private String pcId;
	private String pcContent;
	private Date pcDate;
	private String pcUser;
	private String ppId;
	
	public Pro_Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Pro_Comment(String pcId, String pcContent, Date pcDate, String pcUser, String ppId) {
		super();
		this.pcId = pcId;
		this.pcContent = pcContent;
		this.pcDate = pcDate;
		this.pcUser = pcUser;
		this.ppId = ppId;
	}

	public String getPcId() {
		return pcId;
	}

	public void setPcId(String pcId) {
		this.pcId = pcId;
	}

	public String getPcContent() {
		return pcContent;
	}

	public void setPcContent(String pcContent) {
		this.pcContent = pcContent;
	}

	public Date getPcDate() {
		return pcDate;
	}

	public void setPcDate(Date pcDate) {
		this.pcDate = pcDate;
	}

	public String getPcUser() {
		return pcUser;
	}

	public void setPcUser(String pcUser) {
		this.pcUser = pcUser;
	}

	public String getPpId() {
		return ppId;
	}

	public void setPpId(String ppId) {
		this.ppId = ppId;
	}
	
	
	
}
