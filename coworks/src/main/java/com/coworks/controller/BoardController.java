package com.coworks.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coworks.domain.administration.BoardVO;
import com.coworks.service.administration.BoardServiceImpl;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/administration/")
@Log4j
public class BoardController {
	@Autowired
	private BoardServiceImpl BoardService;
	
	
	@GetMapping("/list-board")//게시판 출력 화면
	public String listBoard(Model model) {
		model.addAttribute("boardDTO", BoardService.listBoardService());
		return "/administration/board/sv_board";
	}
	
	@PostMapping("/board")//게시판 작성
	public String insertBoard(BoardVO board) {
		BoardService.insertBoardService(board);
		
		return "redirect:/administration/list-board";
	}
	
	@ResponseBody//게시판 상세정보
	@GetMapping(value = "/board/{bno}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<BoardVO> detailBoard(@PathVariable("bno") Long bno) {
		
		return new ResponseEntity<>(BoardService.detailBoardService(bno), HttpStatus.OK);
	}
	
	@PostMapping("/delete-board")//게시판 삭제
	public String deleteBoard(Long bno) {
		BoardService.deleteBoardService(bno);
		return "redirect:/administration/list-board";
	}
	

	@PostMapping("/update-board")//게시판 수정
	public String updatePosting(BoardVO board) {
		System.out.println(board + " ssssssssssssssssssssssssssssssssssssssssssssss");
		BoardService.updateBoardService(board);
		return "redirect:/administration/list-board";
	}
	
	@PostMapping("/delete-all-board")//게시판 리스트 모두 삭제
	public String deletePostingList(HttpServletRequest request, Model model) {
		int result = 0;
		result = BoardService.deleteBoardListService(request);
		
		if(result == -1) {
			model.addAttribute("result", result);
		}
		
		return "redirect:/administration/list-board";
	}
}
