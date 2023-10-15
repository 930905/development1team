package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {

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
	
	@RequestMapping(value = "/member/searchId", method = RequestMethod.GET)
	public String searchId(MemberVO member, RedirectAttributes rttr) {
		log.info("아이디 찾기 페이지 : " + member);
		
		return "/member/searchId";
	}
	
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
