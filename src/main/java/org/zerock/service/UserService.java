package org.zerock.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.CommentVO;
import org.zerock.domain.UserDTO;
import org.zerock.domain.commentPageDTO;

public interface UserService {
	// 회원가입 - Create
	public void join(UserDTO user);
	
	// 아이디 중복체크
	public int idCheck(String user_id);
	
	// 닉네임 중복체크
	public int nameCheck(String user_name);
	
	// 로그인
	public UserDTO login(UserDTO user);
	
	// 회원 정보 조회  - Read
	public UserDTO get(String user_id);
	
	// 회원탈퇴  - delete
	public int remove(String user_id);
	
	// 회원정보수정 - update
	public int modify(UserDTO user);
}