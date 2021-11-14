package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.UserDTO;

public interface UserMapper {
		// (회원가입)
		public void insert(UserDTO user);
		// 아이디 중복체크
		public int idCheck(String user_id);
		// 닉네임 중복체크
		public int nameCheck(String user_name);
		// 로그인
		public UserDTO login(UserDTO user);
		// (회원 정보 조회)	
		public UserDTO read(String user_id);
		
		// (회원탈퇴)
		public int delete(String user_id);
		
		// (회원정보수정)
		public int update(UserDTO user);
		
}
