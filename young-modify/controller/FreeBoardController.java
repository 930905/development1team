package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;
import org.zerock.domain.PageDTO;
import org.zerock.service.FreeBoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class FreeBoardController {

	private FreeBoardService freeservice;
	
	// Page300 소스 코딩할 때, 아래 5줄 소스는 주석 처리를 해줍니다.
//	@GetMapping("/list")
//	public void list(Model model) {
//		log.info("list 글 목록 조회를 처리합니다!");
//		model.addAttribute("list", service.getList());
//	}
	
	// Page300 : 페이징 매개변수 적용 /list 소스 코딩을 아래와 같이 5줄 추가해 줍니다.
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list 글 목록 조회를 처리합니다!" + cri);
		model.addAttribute("list", freeservice.getList(cri));
		
		int total = freeservice.getTotal(cri);
		
		log.info("total 전체 데이터 수 = " + total);		
													// total 변수 데이터수 = 123개로 가정함
//		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}	
	

	
	// Page316 : 조회 페이지에서 다시 목록 페이지로 이동 : 페이지 번호 유지를 위한 BoardController 소스 코딩을 해줍니다.
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get or modify 조회 처리");
		model.addAttribute("board", freeservice.get(bno));
	}

	// 수정 처리와 테스트 : 수정 작업은 등록과 비슷합니다. 변경된 내용을 수집해서
	// BoardVO 파라미터로 처리하고, BoardService를 호출합니다. 수정 작업을 시작하는
	// 화면의 경우에는 GET 방식으로 접근하지만 실제 작업은 POST 방식으로 동작하므로
	// @PostMapping을 이용해서 처리합니다.
	@PostMapping("/modify")
	public String modify(FreeBoardVO freeboard, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify: 수정 처리 " + freeboard);
		// service.modify() 메서드는 수정 여부를 boolean으로 처리하므로
		// 이것을 이용해서 성공한 경우에만 RedirectAttributes에 추가합니다.
		if(freeservice.modify(freeboard)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());	
		rttr.addAttribute("type", cri.getType());	
		rttr.addAttribute("keyword", cri.getKeyword());		
		
		return "redirect:/board/list";
	}
}
