package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/member/searchId", method = RequestMethod.GET)
	public String searchId(HttpServletRequest request, Model model, MemberVO searchVO) {
		return "/member/searchId";
		
	}
	
	@RequestMapping(value = "/member/resultId")
	public String resultId(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "name") String name,
			@RequestParam(required = true, value = "email") String email,
			MemberVO searchVO) {
		try {

			searchVO.setName(name);
			searchVO.setEmail(email);
			MemberVO memberSearch = service.memberIdSearch(searchVO);
			
			model.addAttribute("searchVO", memberSearch);
			
		} catch (Exception e) {
			System.out.println(e.toString());
			model.addAttribute("msg", "오류가 발생되었습니다.");
		}
		
		return "/member/resultId";
	}
	
	
	
	
	
	
	
	
	

	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login(MemberVO member, RedirectAttributes rttr) {
		log.info("로그인 페이지 : " + member);
		
		return "/member/login";
	}
	
	@RequestMapping(value = "/member/signUp", method = RequestMethod.GET)
	public String signUp(MemberVO member, RedirectAttributes rttr) {
		log.info("회원가입 페이지 : " + member);
		
		return "/member/signUp";
	}
	
//	@RequestMapping(value = "/member/searchId", method = RequestMethod.GET)
//	public String searchId(MemberVO member, RedirectAttributes rttr) {
//		log.info("아이디 찾기 페이지 : " + member);
//		
//		return "/member/searchId";
//	}
//	
	@RequestMapping(value = "/member/searchPw", method = RequestMethod.GET)
	public String searchPw(MemberVO member, RedirectAttributes rttr) {
		log.info("비밀번호 찾기 페이지 : " + member);
		
		return "/member/searchPw";
	}
	
	@RequestMapping(value = "/member/register", method = RequestMethod.GET)
	public String main(MemberVO member, RedirectAttributes rttr) {
		log.info("메인 페이지 : " + member);
		
		return "/member/register";
	}
	
}
