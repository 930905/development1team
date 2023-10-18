package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private MemberMapper mapper;
	
//	public MemberVO getId(String name, String email) {
//		log.info("getId... 특정 아이디를 조회합니다" + name + email);
//		return mapper.findId(name, email);
//	}
	
	@Override
	public MemberVO memberIdSearch(MemberVO searchVO) {
		return mapper.memberIdSearch(searchVO);
	}
	
	
	
}
