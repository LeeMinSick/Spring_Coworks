package com.coworks.mapper;

import java.util.List;

import com.coworks.domain.board.CommentVO;
import com.coworks.domain.board.Criteria;
import com.coworks.domain.board.PostingVO;



public interface BoardMapper {
	public String getTime();
	
	//게시글
	List<PostingVO> selectPostingList(Criteria criteria);
	int insertPosting(PostingVO postingVO);
	int insertPostingWithKey(PostingVO postingVO);
	PostingVO detailPosting(long seq);
	int deletePosting(long seq);
	int updatePosting(PostingVO postingVO);
	int getTotalPostingCount(Criteria criteria);
	
	
	//댓글
	int insertComment(CommentVO commentVO);
	CommentVO getComment(Long posting_numeber);
	int deleteComment(Long posting_numeber);
	int updateComment(CommentVO commentVO);
	List<CommentVO> selectCommentList(Long posting_number);
	int getCommentCountByPosting(Long posting_numeber);
}
