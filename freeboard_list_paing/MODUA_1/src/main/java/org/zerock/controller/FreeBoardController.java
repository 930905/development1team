package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.FreeBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/freeboard/*")
@AllArgsConstructor
public class FreeBoardController {
	
	private FreeBoardService fservice;
	
	@GetMapping("/freelist")
	public void list(Criteria cri, Model model) {
		log.info("list 글 목록 조회를 처리합니다!" + cri);
		model.addAttribute("list", fservice.getList(cri));
		
		int total = fservice.getTotal(cri);
		
		log.info("total 전체 데이터 수 = " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}	

}
