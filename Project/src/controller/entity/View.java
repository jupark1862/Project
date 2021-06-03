package controller.entity;

import java.util.Date;

public class View {
	
	private int id;
	private String bbsTitle;
	private Date bbsDate;
	private String bbsID;
	private String Hit;
	private String bbsContent;
	
	public View() {
	}
	
	public View(int id, String bbsTitle, Date bbsDate, String bbsID, String hit, String bbsContent) {

		this.id = id;
		this.bbsTitle = bbsTitle;
		this.bbsDate = bbsDate;
		this.bbsID = bbsID;
		Hit = hit;
		this.bbsContent = bbsContent;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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

	public String getBbsID() {
		return bbsID;
	}

	public void setBbsID(String bbsID) {
		this.bbsID = bbsID;
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
		return "View [id=" + id + ", bbsTitle=" + bbsTitle + ", bbsDate=" + bbsDate + ", bbsID=" + bbsID + ", Hit="
				+ Hit + ", bbsContent=" + bbsContent + "]";
	}
	
	
}
