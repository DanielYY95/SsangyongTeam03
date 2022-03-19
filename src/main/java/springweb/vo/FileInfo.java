package springweb.vo;

import java.util.Date;

public class FileInfo {
	
	private int fno;
	private String pathinfo;
	private String fname;
	private Date regdte;
	public FileInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public FileInfo(String pathinfo, String fname) {
		super();
		this.pathinfo = pathinfo;
		this.fname = fname;
		
	}


	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getPathinfo() {
		return pathinfo;
	}
	public void setPathinfo(String pathinfo) {
		this.pathinfo = pathinfo;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Date getRegdte() {
		return regdte;
	}
	public void setRegdte(Date regdte) {
		this.regdte = regdte;
	}
	
	
}
