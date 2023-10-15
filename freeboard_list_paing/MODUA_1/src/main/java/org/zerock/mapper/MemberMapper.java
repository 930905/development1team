package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MemberVO;

public interface MemberMapper {
	
	// select할 때 필요하다고 하는데 뭔지 모르겠다.
	public MemberVO searchId(String memberid);
	
	// 특정 아이디 조회
	public MemberVO readId(@Param("name") String name, @Param("email") String email);
	
	

}
