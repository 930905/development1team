package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.FreeBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/freeboard/*")
@AllArgsConstructor
public class FreeBoardController {
	
	private FreeBoardService service;
	
	// Page300 소스 코딩할 때, 아래 5줄 소스는 주석 처리를 해줍니다.
	@GetMapping("/freelist")
	public void list(Model model) {
		log.info("list 글 목록 조회를 처리합니다!");
		model.addAttribute("list", service.getList());
	}

}
