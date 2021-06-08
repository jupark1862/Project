package com.exam.dto;

import java.sql.Timestamp;

public class BoardDto {
	private int boardNo = 1, userNo = 1, hit = 0;
	private String boardTitle, boardContents;
	private Timestamp boardDate;


	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContents() {
		return boardContents;
	}

	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}

	public Timestamp getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Timestamp boardDate) {
		this.boardDate = boardDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BoardDto [boardNo=").append(boardNo).append(", hit=").append(hit).append(", boardTitle=")
				.append(boardTitle).append(", boardContents=").append(boardContents).append(", boardDate=").append(boardDate)
				.append("]");
		return builder.toString();
	}
}