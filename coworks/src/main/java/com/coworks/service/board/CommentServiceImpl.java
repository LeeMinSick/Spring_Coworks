package com.coworks.service.board;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coworks.domain.board.CommentPageDTO;
import com.coworks.domain.board.CommentVO;
import com.coworks.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class CommentServiceImpl implements CommentService {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Override
	public int insertCommentService(CommentVO commentVO) {
		 
//		 boardMapper.updateReplyCnt(vo.getBno(), 1);
		 
		return boardMapper.insertComment(commentVO);
	}

	@Override
	public CommentVO getCommentService(Long Comment_number) {
		return boardMapper.getComment(Comment_number);
	}

	@Override
	public int updateCommentService(CommentVO commentVO) {
		return boardMapper.updateComment(commentVO);
	}

	
	@Override
	public int deleteCommentService(Long Comment_number) {
		
		CommentVO commentVO = boardMapper.getComment(Comment_number);
		
//		boardMapper.updateReplyCnt(vo.getBno(), -1);
		
		return boardMapper.deleteComment(Comment_number);
	}

	@Override
	public CommentPageDTO getListCommentService(Long posting_number) {
		return new CommentPageDTO(
				boardMapper.getCommentCountByPosting(posting_number), 
				boardMapper.selectCommentList(posting_number));
	}


}
