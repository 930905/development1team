package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.memberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Test
	public void testRead() {
		// 이번에 testRead() 메서드의 테스트 확인은 "기존에 있는 DB 데이터 정보 bno값"을 활용합니다.
		memberVO member = mapper.read("ccc");
		log.info(member);
	}
	
	@Test
	public void testDelete() {
		log.info("삭제 처리 리턴값 DELETE COUNT : " + mapper.delete("ccc"));
	}

}
