package com.coworks.mapper;

import java.util.List;


import com.coworks.board.domain.Comm;
import com.coworks.board.domain.Criteria;
import com.coworks.board.domain.PostingVO;


public interface BoardMapper {
	public String getTime();
	
	
	List<PostingVO> selectPostingList();
	int insertPosting(PostingVO postingVO);
	int insertPostingWithKey(PostingVO postingVO);
//	int countPosting(Criteria criteria);
	PostingVO detailPosting(long seq);
	int deletePosting(long seq);
	int updatePosting(PostingVO postingVO);
//	
//	int insertComment(Comm comment);
//	List<Comm> selectCommentList(long seq);
}
