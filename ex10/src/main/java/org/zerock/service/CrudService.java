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
	// 글수정 boolean타입 사용이유는 수정과 삭제시 정상적으로 작동했을경우 알림창을 띄우기 위해서
	public boolean modify(CrudBoardVO cboard);
	// 글삭제 
	public boolean remove(int bno);
}
