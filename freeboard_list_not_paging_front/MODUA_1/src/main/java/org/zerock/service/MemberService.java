package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {

	// 이름과 이메일을 입력하면 아이디를 보여주겠다.
	public MemberVO getId(String memberid);
	
}
