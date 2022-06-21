package com.coworks.mapper;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CommentMapperTests {

	private Long[] pnoArr = {262685L, 262686L, 262687L, 262688L, 262689L};
	
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	
//	@Test
//	public void testInsertComment() {
//		IntStream.range(1, 5).forEach(i -> {
//			CommentVO vo = new CommentVO();
//			
//			vo.setPosting_number(pnoArr[i]);
//			vo.setComment_contents("댓글 테스트 : " + i);
//			vo.setComment_name("replyer : " + i);
//			
//			mapper.insertComment(vo);
//		});
//	}
	
//	@Test
//	public void testDetailComment() {
//		Long targetPno = 60L;
//		CommentVO vo = mapper.getComment(targetPno);
//		log.info(vo);
//	}
	
//	@Test
//	public void testDeleteComment() {
//		Long targetPno = 60L;
//		mapper.deleteComment(targetPno);
//	}
	
//	@Test
//	public void testUpdateComment() {
//		Long targetPno = 59L;
//		
//		CommentVO vo = mapper.getComment(targetPno);
//		
//		vo.setComment_contents("Update Reply ");
//		
//		int count = mapper.updateComment(vo);
//		
//		log.info("UPDATE COUNT : " + count);
//	}
	
//	@Test
//	public void testListComment() {
//		Long posting_number = 262686L;
//		
//		List<CommentVO> Comments = mapper.selectCommentList(posting_number);
//		
//		Comments.forEach(Comment -> log.info(Comment));
//	}
	

}
