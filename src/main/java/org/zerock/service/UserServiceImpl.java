package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.CommentVO;
import org.zerock.domain.UserDTO;
import org.zerock.domain.commentPageDTO;
import org.zerock.mapper.BoardMapper;
import org.zerock.mapper.CommentMapper;
import org.zerock.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService{
	
	private UserMapper mapper;
	
	// 회원가입
	public void join(UserDTO user) {
		mapper.insert(user);
	}
	
	// 아이디 중복체크
	public int idCheck(String user_id) {
		return mapper.idCheck(user_id);
	}
	// 닉네임 중복체크
	public int nameCheck(String user_name) {
		return mapper.nameCheck(user_name);
	}
	// 로그인
	public UserDTO login(UserDTO user) {
		return mapper.login(user);
	}
	// 회원정보조회
	public UserDTO get(String user_id) {
		return mapper.read(user_id);
	}
	
	// 회원탈퇴
	public int remove(String user_id) {
		return mapper.delete(user_id);
	}
	
	// 회원정보수정
	public int modify(UserDTO user) {
		return mapper.update(user);
	}


}
