package com.coworks.service.board;


import com.coworks.domain.board.CommentPageDTO;
import com.coworks.domain.board.CommentVO;



public interface CommentService {
	public int insertCommentService(CommentVO commentVO);
	
	public CommentVO getCommentService(Long Comment_number);
	
	public int updateCommentService(CommentVO commentVO);
	
	public int deleteCommentService(Long Comment_number);
	
	public CommentPageDTO getListCommentService(Long Posting_number);
	
}
