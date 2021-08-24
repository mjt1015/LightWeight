package org.zerock.mapper;

import java.util.ArrayList;

import org.zerock.domain.Basic;
import org.zerock.domain.CrudBoardVO;

public interface CrudBoardMapper {
	public ArrayList<CrudBoardVO> getList(Basic bas);
	public void insertSelectKey(CrudBoardVO cboard);
	public void insert(CrudBoardVO board);
	public ArrayList<CrudBoardVO> getWithPaing();
	public CrudBoardVO read(int bno);
	public boolean update(CrudBoardVO cboard);
}
