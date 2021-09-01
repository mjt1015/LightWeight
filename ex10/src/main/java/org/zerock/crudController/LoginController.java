package org.zerock.crudController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.LoginBoardVO;
import org.zerock.service.LoginService;

@Controller
@RequestMapping(value="/login")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private LoginService service;
	@GetMapping(value="membership")
	public void membership() {
		logger.info("membership");
	}
	@PostMapping(value="membership")
	public String membershipPost(LoginBoardVO board) {
		logger.info("membership");
		service.membership(board);
		return "redirect:/login/join";
	}
}
