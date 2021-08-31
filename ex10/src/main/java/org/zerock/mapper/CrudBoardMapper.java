package org.zerock.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Basic;
import org.zerock.domain.CrudBoardVO;
// 게시판 mapper
public interface CrudBoardMapper {
	// 목록리스트
	public ArrayList<CrudBoardVO> getList(Basic bas);
	public void insertSelectKey(CrudBoardVO cboard);
	public void insert(CrudBoardVO board);
	// 페이징
	public ArrayList<CrudBoardVO> getWithPaing(Basic bas);
	public CrudBoardVO read(int bno);
	public boolean update(CrudBoardVO cboard);
	public boolean delete(int bno);
	// 댓글수 업데이트
	public void updateReplyview(@Param("bno")int bno,@Param("amount")int amount);
	// 페이징처리
	public int getTotalCount(Basic bas);
}
