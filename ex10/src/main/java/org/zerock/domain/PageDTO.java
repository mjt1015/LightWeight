package org.zerock.domain;

public class PageDTO {
	// 1,11,21,31...저장하는 startPage변수
	private int startPage;
	// 10,20,30,40...저장하는 endPage변수
	private int endPage;
	// 이전버튼 유무를 저장하는 prev변수
	private boolean prev;
	// 다음버튼 유무를 저장하는 next변수
	private boolean next;
	// 전체 데이터를 저장하는 total변수
	private int total;
	// Basic데이터 저장
	private Basic bas;
	
	public PageDTO(Basic bas, int total) { // 생성자
		this.bas=bas;
		this.total=total;
		
		this.endPage=(int)(Math.ceil(bas.getPageNum()/10.0))*10;
		this.startPage=this.endPage-9;
		
		int realEnd=(int)(Math.ceil((total*1.0)/bas.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage=realEnd;
		}
		this.prev=this.startPage>1;
		this.next=this.endPage<realEnd;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Basic getBas() {
		return bas;
	}

	public void setBas(Basic bas) {
		this.bas = bas;
	}

	@Override
	public String toString() {
		return "PageDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", bas=" + bas + "]";
	}
	
}
