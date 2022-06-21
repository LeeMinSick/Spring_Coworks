package com.coworks.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coworks.domain.board.PostingVO;
import com.coworks.service.board.PostingService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostingServiceTests {
	
	@Setter(onMethod_ = {@Autowired})
	private PostingService service;
	
	@Test
	public void testInsertPosting() {
		PostingVO posting = new PostingVO();
		posting.setBoard_number(21L);
		posting.setPosting_title("안녕하세요");
		posting.setPosting_contents("안녕");
		posting.setPosting_writer("홍길동");
	
		service.insertPostingService(posting);
		
		log.info(posting.getPosting_number());
	}
	
//	@Test
//	public void testListPosting() {
//		Criteria cri = new Criteria();
//		cri.setPageNum(3);
//		cri.setAmount(10);
//		cri.setType("T");
//		cri.setKeyword("ww");
//		
//		service.listPostingService(cri).forEach(posting -> log.info(posting));
//	}
	
//	@Test
//	public void testDetailPosting() {
//		log.info(service.detailPostingService(70L));
//	}
	
//	@Test
//	public void testDeletePosting() {
//		log.info("Delete : " + service.deletePostingService(1L));
//		
//		service.listPostingService().forEach(posting -> log.info(posting));
//	}
	
//	@Test
//	public void testUpdatePosting() {
//		
//		PostingVO posting = new PostingVO();
//		posting.setPosting_number(70L);
//		posting.setPosting_title("안녕");
//		posting.setPosting_contents("안녕233");
//		
//		log.info("Update : " + service.updatePostingService(posting));
//		
//		service.listPostingService().forEach(posting2 -> log.info(posting2));
//	}
	
//	@Test
//	public void testAllDeletePosting() {
//		int count = service.deletePostingListService();
//		
//		log.info("총삭제행수 : " + count);
//	}
	
//	@Test
//	public void testPostingCount() {
//			Criteria cri = new Criteria();
//			cri.setType("T");
//			cri.setKeyword("ww");
//		
//		int count = service.getPostingCount(cri);
//		
//		log.info("총 게시글 수 : " + count);
//	}
	
	
	
}
