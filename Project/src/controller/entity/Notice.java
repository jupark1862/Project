package controller.entity;

import java.util.Date;

public class Notice {
	
	private int bbsID;
	private String bbsTitle;
	private Date bbsDate;
	private String userID;
	private String Hit;
	private String bbsContent;
	
	public Notice() {
	}
	
	public Notice(int bbsid, String bbsTitle, Date bbsDate, String userid, String hit, String bbsContent) {

		this.bbsID = bbsid;
		this.bbsTitle = bbsTitle;
		this.bbsDate = bbsDate;
		this.userID = userid;
		this.Hit = hit;
		this.bbsContent = bbsContent;
	}

	public int getBbsID() {
		return bbsID;
	}

	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}

	public String getBbsTitle() {
		return bbsTitle;
	}

	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}

	public Date getBbsDate() {
		return bbsDate;
	}

	public void setBbsDate(Date bbsDate) {
		this.bbsDate = bbsDate;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getHit() {
		return Hit;
	}

	public void setHit(String hit) {
		Hit = hit;
	}

	public String getBbsContent() {
		return bbsContent;
	}

	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	
	@Override
	public String toString() {
		return "View [bbsID=" + bbsID + ", bbsTitle=" + bbsTitle + ", bbsDate=" + bbsDate + ", bbsID=" + bbsID + ", Hit="
				+ Hit + ", bbsContent=" + bbsContent + "]";
	}
	
	
}
