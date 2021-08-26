package org.zerock.crudController;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyService;

@RestController
@RequestMapping("reply")
public class ReplyController {
	@Autowired
	private ReplyService rservice;
	// 댓글작성		@RequestBody는 json을 객체로  만드는것
	@PostMapping(value="new",consumes="application/json",produces={MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> add(@RequestBody ReplyVO vo){
		int insertCount=rservice.replyWrite(vo);
		return insertCount==1? new ResponseEntity<>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	// 댓글리스트	@PathVariable("bno") 경로에 bno값을 추가한다
	@GetMapping(value="page/{bno}",produces= {MediaType.APPLICATION_XML_VALUE,
											MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ArrayList<ReplyVO>>getList(@PathVariable("bno")int bno){
		return new ResponseEntity<>(rservice.replyList(bno),HttpStatus.OK);
	}
	// 댓글 수정
	@PutMapping(value="/{rno}",consumes="application/json",
			produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody ReplyVO vo,
			@PathVariable("rno")int rno){
		vo.setRno(rno); // 왜 가져온걸까
		int modifyCount=rservice.replyModify(vo);
		return modifyCount==1 ? new ResponseEntity<>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 댓글삭제
	@DeleteMapping(value="/{rno}",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String>remove(@PathVariable("rno")int rno){
		int removeCount=rservice.replyRemove(rno);
		return removeCount==1 ? new ResponseEntity<>("success",HttpStatus.OK)
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}













