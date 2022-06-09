package com.coworks.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coworks.board.domain.PostingVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostingMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
//	@Test
//	public void testSelectList() {
//		mapper.selectPostingList().forEach(posting -> log.info(posting));
//	}
	
	
	
//	@Test
//	public void testInsertPosting() {
//	
//			
//		
//		PostingVO posting = new PostingVO();
//		posting.setPosting_title("sssss");
//		posting.setPosting_contents("ddddd");
//		posting.setPosting_writer("fffff");
//		
//		log.info(posting);
//		
//		mapper.insertPosting(posting);
//	}
	
	
	
//	@Test
//	public void testInsertPostingWithKey() {
//		PostingVO posting = new PostingVO();
//		posting.setPosting_title("sssss");
//		posting.setPosting_contents("ddddd");
//		posting.setPosting_writer("fffff");
//		posting.setBoard_number(1);
//		posting.setMembership_number("1");
//		
//		
//		mapper.insertPostingWithKey(posting);
//		log.info(posting);
//	}
	
//	@Test
//	public void testDetailPosting() {
//		PostingVO posting = mapper.detailPosting(1L);
//		log.info(posting);
//	}
	
//	@Test
//	public void testDeletePosting() {
//		mapper.deletePosting(65L);
//		
//		mapper.selectPostingList().forEach(posting -> log.info(posting));
//	
//	}
	
	
//	@Test
//	public void testUpdatePosting() {
//		PostingVO posting = new PostingVO();
//		posting.setPosting_title("VVVV");
//		posting.setPosting_contents("tttt");
//		posting.setPosting_number(68L);
//		
//		mapper.updatePosting(posting);
//		
//		mapper.selectPostingList().forEach(posting2 -> log.info(posting2));
//	}
}
