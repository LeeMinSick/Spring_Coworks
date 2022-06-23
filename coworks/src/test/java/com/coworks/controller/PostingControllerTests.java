package com.coworks.controller;

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

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
						"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class PostingControllerTests {
	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void before() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testListPosting() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/list-posting")
				.param("pageNum", "3")
				.param("amount", "20"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
	}
	
	@Test
	public void testInsertPosting() throws Exception {
			
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/posting")
				.param("posting_title", "안녕")
				.param("posting_contents", "안녕하세요"))
				.andReturn()
				.getModelAndView()
				.getViewName();
		
		log.info(resultPage);
	}
	
//	@Test
//	public void testDetailPosting() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders
//				 				.get("/board/posting")
//				 				.param("pno", "117"))
//								.andReturn()
//								.getModelAndView()
//								.getModelMap());
//	}
	
//	@Test
//	public void testUpdatePosting() throws Exception {
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders.put("/board/posting")
//						.param("posting_number", "117")
//						.param("posting_title", "수정제목")
//						.param("posting_contents", "수정내용"))
//				.andReturn().getModelAndView().getViewName();
//		
//		log.info(resultPage);
//				
//	}
	
//	@Test
//	public void testDeletePosting() throws Exception {
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.delete("/board/posting")
//							.param("pno", "116"))
//							.andReturn().getModelAndView().getViewName();
//		
//		log.info(resultPage);
//							
//	}
	
}
