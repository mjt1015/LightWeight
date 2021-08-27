package org.zerock.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.Basic;
import org.zerock.domain.CrudBoardVO;
import org.zerock.mapper.CrudBoardMapper;

@Service
public class CrudServiceImpl implements CrudService{
	private static final Logger logger = LoggerFactory.getLogger(CrudServiceImpl.class);
	@Autowired
	private CrudBoardMapper mapper;
	
	// 게시판 글쓰기(register) 구현부
	public void write(CrudBoardVO cboard) {
		logger.info("write......"+cboard);
		//tbl_board 테이블 insert
		 mapper.insertSelectKey(cboard);
		// mapper.insert(cboard);
	}
	// 글목록
	public ArrayList<CrudBoardVO> getList(Basic bas){
		return mapper.getList(bas);
	}
	// 글목록+페이징처리 할예정
	public ArrayList<CrudBoardVO>getWithPaing(){
		return mapper.getWithPaing();
	}
	// 상세페이지
	public CrudBoardVO get(int bno) {
		return mapper.read(bno);
	}
	// 수정버튼?
	public boolean modify(CrudBoardVO cboard) {
		return mapper.update(cboard);
	}
	// 삭제버튼?
	public boolean remove(int bno) {
		return mapper.delete(bno);
	}
	public int getTotalCount(Basic bas) {
		return mapper.getTotalCount(bas);
	}
}
