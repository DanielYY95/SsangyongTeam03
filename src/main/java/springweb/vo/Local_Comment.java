package springweb.vo;

import java.util.Date;

public class Local_Comment {
	
	private String lcId;
	private String lcContent;
	private Date lcDate;
	private String lcUser;
	private String lpId;
	
	
	public Local_Comment() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Local_Comment(String lcId, String lcContent, Date lcDate, String lcUser, String lpId) {
		super();
		this.lcId = lcId;
		this.lcContent = lcContent;
		this.lcDate = lcDate;
		this.lcUser = lcUser;
		this.lpId = lpId;
	}


	public String getLcId() {
		return lcId;
	}


	public void setLcId(String lcId) {
		this.lcId = lcId;
	}


	public String getLcContent() {
		return lcContent;
	}


	public void setLcContent(String lcContent) {
		this.lcContent = lcContent;
	}


	public Date getLcDate() {
		return lcDate;
	}


	public void setLcDate(Date lcDate) {
		this.lcDate = lcDate;
	}


	public String getLcUser() {
		return lcUser;
	}


	public void setLcUser(String lcUser) {
		this.lcUser = lcUser;
	}


	public String getLpId() {
		return lpId;
	}


	public void setLpId(String lpId) {
		this.lpId = lpId;
	}
	
	
	
	
}
