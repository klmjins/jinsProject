package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.controller.BoardController;
//import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
//@AllArgsConstructor
@RequestMapping("/oobboard/*")   
public class BoardController {

//	private BoardService service;
	@GetMapping("board")
	public void board() {
		log.info("gd");
	}

	
	@GetMapping("register")
	public void register() {
		
	}
}
