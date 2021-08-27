package org.zerock.crudController;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Basic;
import org.zerock.domain.CrudAttachVO;
import org.zerock.domain.CrudBoardVO;
import org.zerock.domain.PageDTO;
import org.zerock.service.CrudService;

@Controller
@RequestMapping(value="crud")
public class CrudController {
	private static final Logger logger = LoggerFactory.getLogger(CrudController.class);
	@Autowired
	private CrudService service;
	@GetMapping(value="crudWrite")
	public void crudWrite() {
		logger.info("crudWrite");
	}
	// 게시판에서 작성버튼을 클릭
	@PostMapping(value="crudWrite")
	public String crudWritePost(CrudBoardVO cboard) {
		logger.info("registerPost");
		service.write(cboard);
		return "redirect:/crud/crudList"; // 서버에서 서버로 이동
	}
	// 게시판리스트
	@RequestMapping(value="crudList", method = {RequestMethod.GET, RequestMethod.POST})
	public void list(Model model,Basic bas) {
		logger.info("list");
		int count=service.getTotalCount(bas);
		model.addAttribute("list", service.getWithPaing());
		model.addAttribute("pageMaker", new PageDTO(bas,count));
	}
	// 게시판 상세페이지
	@GetMapping(value="crudGet")
	public void get(@RequestParam("bno") int bno,Model model) {
		logger.info("get");
		model.addAttribute("board",service.get(bno));
	}
	// 수정버튼클릭시
	@PostMapping(value="crudModify")
	public String crudModify(CrudBoardVO cboard, RedirectAttributes rttr) {
		if(service.modify(cboard)) {
			rttr.addAttribute("result", "success");
			rttr.addAttribute("bno", cboard.getBno());
		}
		return "redirect:/crud/crudGet";
	}
	//삭제 버튼클릭시 
	@PostMapping(value="crudRemove")
	public String crudRemove(@RequestParam("bno")int bno) {
		service.remove(bno);
		return "redirect:/crud/crudList";
	}
	
}






















