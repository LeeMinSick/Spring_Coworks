package com.coworks.service.administration;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coworks.domain.administration.BoardPageDTO;
import com.coworks.domain.administration.BoardVO;
import com.coworks.mapper.AdministrationMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_ = @Autowired)
	private AdministrationMapper mapper;

	@Override
	public BoardPageDTO listBoardService() {
		
		List<BoardVO> list = mapper.selectBoardList();
		
		for(int i = 0; i < list.size(); i++) {
			long bno = list.get(i).getBoard_number();
			list.get(i).setPostingCnt(mapper.getPostingCountByBoard(bno));
		}
		
		return new BoardPageDTO(
				list,
				mapper.getTotalBoardCount());
				
	}

	@Override
	public int insertBoardService(BoardVO board) {
		return mapper.insertBoard(board);
	}

	@Override
	public BoardVO detailBoardService(Long bno) {
		return mapper.detailBoard(bno);
	}

	@Override
	public boolean deleteBoardService(Long bno) {
		if(mapper.deleteBoard(bno) > 0) {
			return true;
		}
		
		return false;
	}

	@Override
	public boolean updateBoardService(BoardVO board) {
		if(mapper.updateBoard(board) > 0) {
			return true;
		}
		
		return false;
	}

	@Override
	public int deleteBoardListService(HttpServletRequest request) {
		String[] list = request.getParameterValues("chk_board");
		int countDeleted = 0;
		
		if(list.length == 0) {
			return -1;
		}
		
		for(String e : list ) {
			
			int isDeleted = mapper.deleteBoard(Long.parseLong(e));
			
			if(isDeleted > 0) {
				countDeleted++;
			}
		}
		
		return countDeleted;
	}

}
