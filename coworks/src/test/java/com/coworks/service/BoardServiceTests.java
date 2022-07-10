package com.coworks.service;



import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coworks.domain.administration.BoardVO;
import com.coworks.service.administration.BoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
//	@Setter(onMethod_ = {@Autowired})
//	private BoardService service;
//	
//	@Test
//	public void testInsertBoard() {
//		BoardVO boardVO = new BoardVO();
//		boardVO.setBoard_name("insert서비스");
//		boardVO.setBoard_description("insert설명");
//	
//		service.insertBoardService(boardVO);
//		
//		log.info(boardVO.getBoard_number());
//	}
//	
//	@Test
//	public void testListBoard() {
//		service.listBoardService().forEach(Board -> log.info(Board));
//	}
//	
//	@Test
//	public void testDetailBoard() {
//		log.info(service.detailBoardService(21L));
//	}
//	
//	@Test
//	public void testDeleteBoard() {
//		log.info("Delete : " + service.deleteBoardService(24L));
//		
//		service.listBoardService().forEach(Board -> log.info(Board));
//	}
//	
//	@Test
//	public void testUpdateBoard() {
//		
//		BoardVO boardVO = new BoardVO();
//		boardVO.setBoard_name("insert서비스2");
//		boardVO.setBoard_description("insert설명3");
//		boardVO.setBoard_number(21L);
//		
//		log.info("Update : " + service.updateBoardService(boardVO));
//		
//		service.listBoardService().forEach(board -> log.info(board));
//	}
	
	
	
}
