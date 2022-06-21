package com.coworks.service;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coworks.service.board.CommentService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CommentServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private CommentService service;

//	@Test
//	public void testInsertComment() {
//		CommentVO comment = new CommentVO();
//		
//		comment.setPosting_number(262688L);
//		comment.setComment_contents("댓글서비스 테스트");
//		comment.setComment_name("replyer");
//		
//		service.insertCommentService(comment);
//		
//		log.info(comment.getComment_number());
//	}

//	@Test
//	public void testListComment() {
//
//		service.getListCommentService(262688L).getList().forEach(Comment -> log.info(Comment));
//	}

//	@Test
//	public void testDetailComment() {
//		log.info(service.deleteCommentService(61L));
//	}

//	@Test
//	public void testDeleteComment() {
//		log.info("Delete : " + service.deleteCommentService(61L));
//		
//		service.getListCommentService(262688L).getList().forEach(Comment -> log.info(Comment));
//	}

//	@Test
//	public void testUpdateComment() {
//		CommentVO comment = new CommentVO();
//		
//		comment.setComment_number(64L);
//		comment.setComment_contents("댓글수정서비스 테스트");
//		
//		log.info("Update : " + service.updateCommentService(comment));
//		
//		service.getListCommentService(262688L).getList().forEach(Comment -> log.info(Comment));
//	}

}
