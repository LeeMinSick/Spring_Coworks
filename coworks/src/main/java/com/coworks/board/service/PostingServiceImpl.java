package com.coworks.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coworks.board.domain.PostingVO;
import com.coworks.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class PostingServiceImpl implements PostingService {
	
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Override
	public List<PostingVO> listPostingService() {
		return boardMapper.selectPostingList();
	}

	@Override
	public int insertPostingService(PostingVO posting) {
		return boardMapper.insertPosting(posting);
	}

	@Override
	public PostingVO detailPostingService(Long pno) {
		return boardMapper.detailPosting(pno);
	}

	@Override
	public boolean deletePostingService(Long pno) {
		if(boardMapper.deletePosting(pno) > 0) {
			return true;
		}
		
		return false;
	}

	@Override
	public boolean updatePostingService(PostingVO posting) {
		if(boardMapper.updatePosting(posting) > 0) {
			return true;
		}
		
		return false;
	}

	@Override
	public int deletePostingListService(HttpServletRequest request) {
		String[] list = request.getParameterValues("chk_posting");
		int countDeleted = 0;
		
		for(String e : list ) {
			
			int isDeleted = boardMapper.deletePosting(Long.parseLong(e));
			
			if(isDeleted > 0) {
				countDeleted++;
			}
		}
		
		return countDeleted;
	}

}
