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
	
	private MemberMapper memberMapper;
	
	@Override
	public MemberVO getId(String memberid) {
		log.info("getId...아이디를 찾습니다");
		return memberMapper.searchId(memberid);
	}
	 
}
