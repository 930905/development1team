package org.zerock.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// 스프링의 테스트 기능을 활용하면 개발 당시에 Tomcat(WAS)을 실행하지 않고도
// 스프링과 웹 URL을 테스트할 수 있습니다. WAS를 실행하지 않기 위해서는 약간의 추가적인 코드가
// 필요하지만 반복적으로 서버를 실행하고 화면에 입력하고, 오류를 수정하는 단계를 줄여줄 수 있기
// 때문에 Controller를 테스트할 때는 한번쯤 고려해 볼 필요가 있습니다.
@RunWith(SpringJUnit4ClassRunner.class)
// Test for Controller : @WebAppConfiguration은 Servlet의 ServletContext를
// 이용하기 위해서 사용하며, 스프링에서는 WebApplicationContext를 이용하기 위해 선언합니다.
@WebAppConfiguration
@ContextConfiguration({
 "file:src/main/webapp/WEB-INF/spring/root-context.xml",
 "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class BoardControllerTests {

	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	// MockMvc는 '가짜 mvc'라고 생각하시면 됩니다. 가짜로 URL과 파라미터 등을 브라우저에서
	// 사용하는 것처럼 만들어서 Controller를 실행해 볼 수 있습니다.
	private MockMvc mockMvc;
	// @Before 적용된 메서드는 모든 테스트 전에 매번 실행되는 메서드가 됩니다.
	// @Before 어노테이션이 적용된 setup()에서는 import할 때 JUnit을 사용해야 합니다.
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	// testList()는 MockMvcRequestBuilders을 이용해서 GET 방식 호출을 합니다.
	@Test
	public void testList() throws Exception{
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}
	
	// Page301 : 페이징 매개변수 적용 testListPaging() 메서드 선언
	@Test
	public void testListPaging() throws Exception{
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/board/list")
				.param("pageNum", "2")
				.param("amount", "10"))
				.andReturn().getModelAndView().getModelMap());
	}
	
	
	// 특정 게시물을 조회할 때는 'bno' 파라미터가 필요하므로 param() 메서드를 활용해서
	// 추가하고 실행합니다. 마지막에는 Model에 담겨 있는 BoardVO 인스턴스의 내용을 볼 수 있습니다.
	@Test
	public void testGet() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders
				.get("/board/get")
				.param("bno", "5"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	
	
}

