package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.FreeBoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// Ctrl + Shift + O : import 자동 정리

//@RunWith 어노테이션은 현재 테스트 코드가 스프링을 실행하는 역할을 할 것이이라는 것을 나타냅니다.
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration 어노테이션은 속성값의 문자열 설정으로 지정된 클래스나 문자열을 이용해서
//필요한 객체들을 스프링 내에 객체로 등록하게 됩니다(이것을 스프링의 빈으로 등록된다고 표현합니다)
//이때, SpringMVC 프로젝트 생성시 자동으로 생성된 root-context.xml 경로 지정을 할 수도 있으며,
//보통 문자열은 'classpath:'나 'file:'을 이용할 수 있습니다.
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//@Log4j 어노테이션은 Lombok을 이용해서 로그를 기록하는 Logger를 변수로 생성합니다.
//별도의 Logger 객체의 선언이 없이도 Log4j 라이브러리와 설정이 존재한다면 바로 사용이 가능합니다.
@Log4j
public class FreeBoardMapperTests {

	
	@Setter(onMethod_ = @Autowired)
	private FreeBoardMapper freemapper;
	
	@Test
	public void testGetList() {		
		freemapper.getList().forEach(freeboard -> log.info(freeboard));
	}
	
	@Test
	public void testInsert() {
		FreeBoardVO freeboard = new FreeBoardVO();
		freeboard.setTitle("새로 작성하는 글 제목!");
		freeboard.setContent("새로 작성하는 글 내용!");
		freeboard.setWriter("김희선");
		
		freemapper.insert(freeboard);
		log.info(freeboard);
	}
	
	@Test
	public void testRead() {
		// 이번에 testRead() 메서드의 테스트 확인은 "기존에 있는 DB 데이터 정보 bno값"을 활용합니다.
		FreeBoardVO freeboard = freemapper.read(3L);
		log.info(freeboard);		
	}
	
	@Test
	public void testDelete() {
		log.info("삭제 처리 리턴값 DELETE COUNT : " + freemapper.delete(3L));
	}
	
	@Test
	public void testUpdate() {
		FreeBoardVO freeboard = new FreeBoardVO();
		// 수정하기 위한 게시글번호(bno)가 있는 DB 데이터를 활용합니다!
		freeboard.setBno(5L);
		freeboard.setTitle("5번글 testUpdate() 메서드 활용 제목 수정 와우!");
		freeboard.setContent("5번글 testUpdate() 메서드 활용 내용 수정 와우!");
		freeboard.setWriter("고윤정");
		
		int count = freemapper.update(freeboard);
		log.info("UPDATE COUNT : " + count);
	}
	
	@Test
	public void testPaging() {
	
		Criteria cri = new Criteria();
		
		// Page297 : 10개씩 3페이지 출력 내용을 확인해 봅니다!
		cri.setPageNum(3); // 3페이지의
		cri.setAmount(10); // 10개 데이터를
		
		List<FreeBoardVO> list = freemapper.getListWithPaging(cri); // list에 담아서 보여주게 합니다!
		
		list.forEach(freeboard -> log.info(freeboard));
	}
	
	@Test
	public void testSearch() {
		Criteria cri = new Criteria();
		cri.setKeyword("Test");
		cri.setType("TC");
		List<FreeBoardVO> list = freemapper.getListWithPaging(cri);
		list.forEach(freeboard -> log.info(freeboard));
	}
}
