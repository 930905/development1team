package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {

//	public MemberVO getId(@Param("name") String name, @Param("email") String email);

	public MemberVO memberIdSearch(MemberVO searchVO);
	
}
