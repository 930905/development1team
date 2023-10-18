package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MemberVO;

public interface MemberMapper {
	
	// 특정 아이디 조회
//	public MemberVO findId(@Param("name") String name, @Param("email") String email);

	public MemberVO memberIdSearch(MemberVO searchVO);
	
	

}
