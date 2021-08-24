package org.zerock.service;

import java.util.ArrayList;

import org.zerock.domain.Basic;
import org.zerock.domain.CrudBoardVO;

public interface CrudService {
	// 게시판 글작성
	public void write (CrudBoardVO cboard);
	// 게시판 리스트
	public ArrayList<CrudBoardVO>getList(Basic bas);
	// 게시판 리스트 +페이징처리 아직안넣음
	public ArrayList<CrudBoardVO> getWithPaing();
	// 상세 페이지
	public CrudBoardVO get(int bno);
	// 글수정
	public boolean modify(CrudBoardVO cboard);
	// 글삭제
	public boolean delete(int bno);
	
}
