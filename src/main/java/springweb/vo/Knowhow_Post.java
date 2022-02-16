package springweb.vo;

import java.util.Date;

public class Knowhow_Post {
	private String kpId;
	private String kpTitle;
	private String kpContent;
	private int kpView;
	private Date kpDate;
	private int kpLike;
	private String mId;
	
	public Knowhow_Post() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 매개변수의 갯수...
	
	public Knowhow_Post(String kpId, String kpTitle, String kpContent, int kpView, Date kpDate, int kpLike,
			String mId) {
		super();
		this.kpId = kpId;
		this.kpTitle = kpTitle;
		this.kpContent = kpContent;
		this.kpView = kpView;
		this.kpDate = kpDate;
		this.kpLike = kpLike;
		this.mId = mId;
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

	public int getKpLike() {
		return kpLike;
	}

	public void setKpLike(int kpLike) {
		this.kpLike = kpLike;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}
	
	
	
	
	
}
