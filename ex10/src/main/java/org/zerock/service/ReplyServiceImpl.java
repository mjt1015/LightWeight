package org.zerock.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.CrudBoardMapper;
import org.zerock.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired
	public ReplyMapper rmapper;
	@Autowired
	public CrudBoardMapper cbmapper;
	// 댓글목록
	public ArrayList<ReplyVO> replyList(int bno){
		return rmapper.replyList(bno);
	}
	// 댓글쓰기 여기에 트랜젝션을 주는 이유는 댓글작성이 성공일때 댓글 수+1이 업데이트 되어야하기 때문에
	@Transactional
	public int replyWrite(ReplyVO vo) {
		cbmapper.updateReplyview(vo.getBno(),1);
		return rmapper.replyWrite(vo);
	}
	// 댓글수정
	public int replyModify(ReplyVO vo) {
		return rmapper.replyModify(vo);
	}
	// 댓글삭제
	public int replyRemove(int rno) {
		return rmapper.replyRemove(rno);
	}
}
