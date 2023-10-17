package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(@Param("memberid") String memberid, @Param("email") String email);
	
}
