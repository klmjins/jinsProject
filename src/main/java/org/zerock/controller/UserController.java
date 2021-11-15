package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.UserDTO;
import org.zerock.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/join/*")   
public class UserController {
	
	private UserService service;
	// 로그인 화면으로 이동
	@GetMapping("login")
	public void login() {
		
	}
	
	// 로그인
	@PostMapping("login.do")
					//로그인 시 session에 회원정보를 저장하기 위해			로그인 실패 시 리다이렉트 된 로그인 페이지에 실패를 의미하는 데이터를 전송하기 위해
	public String login(HttpServletRequest request, UserDTO user, RedirectAttributes rttr) {
		
		HttpSession session = request.getSession();
		UserDTO lvo = service.login(user);
		
		// 아이디, 비밀번호 일치하지 않음 -> 로그인 실패
		if(lvo==null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			
			return "redirect:login";
		}else {
			// 아이디, 비밀번호 일치 -> 로그인 성공
			session.setAttribute("user",lvo);
			return "redirect:../oobboard/board";
		}
		
	}
	
	//로그아웃
	@PostMapping("logout")
	@ResponseBody
	public void logout(HttpServletRequest request) {
		//log.info("로그아웃 진입");
		
		HttpSession session = request.getSession();
		
		//		세션 전체를 무효화하는 메서드
		session.invalidate();

	}
	
	//회원가입 창으로 이동
	@GetMapping("join")
	public void joinGet() {
		log.info("user");
	}
	//회원가입
	@PostMapping("join")
	public String join(UserDTO user) {
		log.info("post join");

		service.join(user);

		return "redirect:login";
	}
	//아이디 중복체크
	@PostMapping("memberIdChk")
	@ResponseBody
	public String idCheck(String user_id) {
		log.info("아이디체크 진입");
		int result = service.idCheck(user_id);
		log.info("결과값 = "+result);
		if(result!=0) {
			return "fail";
		}else {
			return "success";
		}
	}
	//닉네임 중복체크
	@PostMapping("memberNameChk")
	@ResponseBody
	public String nameCheck(String user_name) {
		log.info("닉네임체크 진입");
		int result = service.nameCheck(user_name);
		log.info("결과값 = "+result);
		if(result!=0) {
			return "fail";
		}else {
			return "success";
		}
	}
	//회원정보
	@GetMapping("info")
	public void read(String user_id) {
		log.info("info" + user_id);
	}
	
	//회원가입
	@GetMapping("membership")
	public void register(UserDTO user) {
		log.info("membership");
	}

	//회원 정보 수정
	@GetMapping("edit")
	public void modify(UserDTO user) {
		log.info("edit");
	}

	@GetMapping("MBout")
	public String remove(String user_id) {
		log.info("remove : " + user_id);
//		service.remove(user_id);
		return "/#";
		//탈퇴 알림창을 띄운후 홈화면으로
	}
}