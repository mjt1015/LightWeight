package org.zerock.service;

import java.util.ArrayList;

import org.zerock.domain.ReplyVO;

public interface ReplyService {
	// 댓글목록
	public ArrayList<ReplyVO> replyList(int bno); 
	// 댓글쓰기
	public int replyWrite(ReplyVO vo);
	// 댓글수정
	public int replyModify(ReplyVO vo);
	// 댓글삭제
	public int replyRemove(int rno);
}
