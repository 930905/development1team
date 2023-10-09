package org.zerock.mapper;

import org.zerock.domain.memberVO;

public interface MemberMapper {

	// delete 처리를 위한 read() 추상 메서드 정의
		public int delete(String memberid);
		public memberVO read(String memberid);
}
