package com.coworks.mapper;

import java.util.List;

import com.coworks.domain.administration.BoardVO;



public interface AdministrationMapper {
	
	//게시판
	List<BoardVO> selectBoardList();
	int insertBoard(BoardVO boardVO);
	int insertBoardWithKey(BoardVO boardVO);
	BoardVO detailBoard(long seq);
	int deleteBoard(long seq);
	int updateBoard(BoardVO boardVO);
	int getPostingCountByBoard(long board_number);
	int getTotalBoardCount();
	
	
}
