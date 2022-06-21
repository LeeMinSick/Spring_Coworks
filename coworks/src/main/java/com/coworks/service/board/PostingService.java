package com.coworks.service.board;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.coworks.domain.board.Criteria;
import com.coworks.domain.board.PostingVO;


public interface PostingService {
	public List<PostingVO> listPostingService(Criteria cri);
	public int insertPostingService(PostingVO posting);
	public PostingVO detailPostingService(Long pno);
	public boolean deletePostingService(Long pno);
	public boolean updatePostingService(PostingVO posting);
	public int deletePostingListService(HttpServletRequest request);
	public int getPostingCount(Criteria cri);

}
