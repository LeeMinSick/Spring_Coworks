package com.coworks.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;


import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private AdministrationMapper mapper;
	
	@Test
	public void testSelectList() {
		mapper.selectBoardList().forEach(posting -> log.info(posting));
	}
	
	
	
//	@Test
//	public void testInsertBoard() {
//		BoardVO boardVO = new BoardVO();
//		boardVO.setBoard_name("insert게시판명2");
//		boardVO.setBoard_description("insert설명2");
//		
//		log.info(boardVO);
//		
//		mapper.insertBoard(boardVO);
//	}
	
	
//	@Test
//	public void testDetailBoard() {
//		BoardVO boardVO = mapper.detailBoard(22L);
//		log.info(boardVO);
//	}
	
//	@Test
//	public void testDeleteBoard() {
//		mapper.deleteBoard(22L);
//		
//		mapper.selectBoardList().forEach(boardVO -> log.info(boardVO));
//	
//	}
	
	
//	@Test
//	public void testUpdatePosting() {
//		BoardVO boardVO = new BoardVO();
//		boardVO.setBoard_name("insert게시판명2");
//		boardVO.setBoard_description("insert설명2");
//		boardVO.setBoard_number(21L);
//		
//		mapper.updateBoard(boardVO);
//		
//		mapper.selectBoardList().forEach(boardVO2 -> log.info(boardVO2));
//	}
	
	
}
