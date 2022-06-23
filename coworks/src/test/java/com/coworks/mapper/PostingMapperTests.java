package com.coworks.mapper;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coworks.domain.board.Criteria;
import com.coworks.domain.board.PostingVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostingMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testSelectList() {
		Criteria cri = new Criteria();
		cri.setPageNum(1);
		cri.setAmount(10);
		cri.setType("T");
		cri.setKeyword("ww");
		mapper.selectPostingList(cri).forEach(posting -> log.info(posting));
	}
	
	
	
	@Test
	public void testInsertPosting() {
	
			
		
		PostingVO posting = new PostingVO();
		posting.setPosting_title("sssss");
		posting.setPosting_contents("ddddd");
		posting.setPosting_writer("fffff");
		
		log.info(posting);
		
		mapper.insertPosting(posting);
	}
	
	
	
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
	
//	@Test
//	public void testPaging() {
//		Criteria cri = new Criteria();
//		cri.setPageNum(3);
//		cri.setAmount(10);
//		
//		List<PostingVO> list = mapper.selectPostingList(cri);
//		
//		list.forEach(posting -> log.info(posting));
//	}
	
//	@Test
//	public void testPostingCount() {
//		Criteria cri = new Criteria();
//		cri.setType("T");
//		cri.setKeyword("ww");
//		int count = mapper.getTotalCount(cri);
//		
//		log.info("총 게시글 수 : " + count);
//	}
	
}
