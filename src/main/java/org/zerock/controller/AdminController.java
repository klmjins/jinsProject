package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.UserService;
import org.zerock.domain.UserDTO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/admin/*")   
public class AdminController {
	@GetMapping("main")
	public void adminMain() {
		log.info("관리자 페이지로 이동");
	}
}
