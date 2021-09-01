package org.zerock.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.LoginBoardVO;
import org.zerock.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService{
	private static final Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);
	@Autowired
	private LoginMapper mapper;
	//회원가입
	public void membership(LoginBoardVO board) {
		logger.info("membership");
		mapper.membership(board);
	}
}
