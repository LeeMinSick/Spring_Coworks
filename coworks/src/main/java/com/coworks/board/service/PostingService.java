package com.coworks.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.coworks.board.domain.PostingVO;

public interface PostingService {
	public List<PostingVO> listPostingService();
	public int insertPostingService(PostingVO posting);
	public PostingVO detailPostingService(Long pno);
	public boolean deletePostingService(Long pno);
	public boolean updatePostingService(PostingVO posting);
	public int deletePostingListService(HttpServletRequest request);

}
