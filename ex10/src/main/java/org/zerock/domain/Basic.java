package org.zerock.domain;

public class Basic {
	// 페이지번호
	private int pageNum;
	// 한페이지당 데이터갯수
	private int amount;
	// 타입
	private String type;
	// 키워드
	private String keyword;
	
	
	
	public Basic() {	// 기본생성자
		this(1,10);
	}
	public Basic(int pageNum, int amount) {	// 매개변수가 2개인 생성자
		this.pageNum=pageNum;
		this.amount=amount;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "Basic [pagaNum=" + pageNum + ", amount=" + amount + ", type=" + type + ", keyword=" + keyword + "]";
	}
	
}
