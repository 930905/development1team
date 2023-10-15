package org.zerock.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class FreeBoardServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private FreeBoardService freeservice;
	
	@Test
	public void testExit() {
		log.info(freeservice);
		assertNotNull(freeservice);
	}

	// 글목록(리스트) 작업의 기능 구현과 테스트
	@Test
	public void testGetList() {
		// Page300 소스 코딩할 때, 아래 1줄 소스는 주석 처리해 줍니다.
//		service.getList().forEach(board -> log.info(board));
		// Page300 : 페이징 매개변수가 적용된 getList() 메서드 테스트를 합니다.
		freeservice.getList(new Criteria(2, 10)).forEach(freeboard -> log.info(freeboard));
	}
	
	// 특정 글 조회 작업의 기능 구현과 테스트
	@Test
	public void testGet() {
		// 1번 글의 상세 정보를 로그 정보로 표시해 줍니다.
		log.info(freeservice.get(1L));
	}

	
	// 글 수정 기능 구현과 테스트
	@Test
	public void testModify() {
		// testModify()의 경우, 특정한 게시글(여개서는 1번글)을 먼저 조회하고,
		FreeBoardVO freeboard = freeservice.get(1L); // 1번 글 수정 처리
		if (freeboard == null) {
			return;
		}
		// 아래의 소스 코드에서 title 값을 수정한 후에, 이를 업데이트 처리 합니다.
		freeboard.setTitle("1번 글의 제목을 수정합니다!");
		log.info("MODIFY RESULT : " + freeservice.modify(freeboard));
	}
}
