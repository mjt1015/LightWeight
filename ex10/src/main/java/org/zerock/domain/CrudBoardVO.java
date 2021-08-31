package org.zerock.domain;

import java.util.Date;

public class CrudBoardVO {
	// 게시판 번호
	private int bno;
	// 제목
	private String title;
	// 내용
	private String content;
	// 작성자
	private String writer;
	// 작성일자
	private Date regdate;
	// 수정일자
	private Date updatedate;
	// 댓글건수
	private int replyview;
	
	public int getReplyview() {
		return replyview;
	}
	public void setReplyview(int replyview) {
		this.replyview = replyview;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	
	@Override
	public String toString() {
		return "CrudBoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + ", replyview=" + replyview + "]";
	}
}
