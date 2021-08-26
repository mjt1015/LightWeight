package org.zerock.mapper;

import java.util.ArrayList;

import org.zerock.domain.ReplyVO;
// 댓글관리 mapper
public interface ReplyMapper {
	// 댓글리스트
	public ArrayList<ReplyVO> replyList(int bno);
	// 댓글쓰기
	public int replyWrite(ReplyVO vo);
	// 댓글수정
	public int replyModify(ReplyVO vo);
	// 댓글삭제 
	public int replyRemove(int rno);
}
