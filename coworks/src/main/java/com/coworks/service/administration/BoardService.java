package com.coworks.service.administration;

import javax.servlet.http.HttpServletRequest;

import com.coworks.domain.administration.BoardPageDTO;
import com.coworks.domain.administration.BoardVO;


public interface BoardService {
	public BoardPageDTO listBoardService();
	public int insertBoardService(BoardVO board);
	public BoardVO detailBoardService(Long bno);
	public boolean deleteBoardService(Long bno);
	public boolean updateBoardService(BoardVO board);
	public int deleteBoardListService(HttpServletRequest request);
}
