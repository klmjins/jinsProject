package org.zerock.domain;

import lombok.Data;

@Data
public class UserVO {
	private String user_id;	//회원 아이디 
	private String user_pw;	//비밀번호
	private String user_name;	//회원 이름
	private String user_gen;	//회원 성별
}
