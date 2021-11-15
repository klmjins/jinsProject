package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {
	//게시판 번호
	private int co_num;
	//아이디
	private String user_id;
	//제목
	private String co_title;
	//게시글 내용
	private String co_text;
	//게시글 날짜
	private Date co_date;
	//수정일자
	private Date co_update;
	//댓글번호
	private int ct_num;
	//댓글 수
	private int ctCnt;
}
