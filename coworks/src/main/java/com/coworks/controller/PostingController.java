package com.coworks.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coworks.domain.board.Criteria;
import com.coworks.domain.board.PageDTO;
import com.coworks.domain.board.PostingVO;
import com.coworks.service.administration.BoardServiceImpl;
import com.coworks.service.board.PostingServiceImpl;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/")
@Log4j
public class PostingController {
	
	private static int amount = 10;
	
	@Autowired
	private PostingServiceImpl postingService;
	
	@Autowired
	private BoardServiceImpl boardService;
	
	
	@GetMapping("/list-posting")//게시글 출력 화면
	public String listPosting(Model model, Criteria cri, 
							@RequestParam(value = "bno", required = false, defaultValue = "-1") long bno) {
		cri.setBno(bno);
		model.addAttribute("list", postingService.listPostingService(cri));
		
		PageDTO page = new PageDTO(cri, postingService.getPostingCount(cri));
		model.addAttribute("pageMaker", page);
		
		model.addAttribute("boardDTO", boardService.listBoardService());
		if(bno >= 0) {
			model.addAttribute("boardVO", boardService.detailBoardService(bno));
		}
	
		return "/board/posting/b_postinglist";
	}
	
	@GetMapping("/register-posting-form")//게시글 작성화면 이동
	public String insertPostingForm(Model model) {
		model.addAttribute("boardDTO", boardService.listBoardService());
		return "/board/posting/b_postingform";
	}
	
	@PostMapping("/posting")//게시글 작성
	public String insertPosting(PostingVO posting) {
		
		System.out.println(posting);
		
		postingService.insertPostingService(posting);
		
//		rttr.addFlashAttribute("posting", postingService.detailPostingService(posting.getPosting_number()));
		
		return "redirect:/board/list-posting";
	}
	
	@GetMapping("/main")//게시판 메인화면 이동
	public String main(Model model) {
		model.addAttribute("boardDTO", boardService.listBoardService());
		return "/board/posting/b_main";
	}
	
	@GetMapping("/posting")//게시글 세부사항보기
	public String detailPosting(Model model, Long pno) {
		
		model.addAttribute("posting", postingService.detailPostingService(pno));
		model.addAttribute("boardDTO", boardService.listBoardService());
		return "/board/posting/b_postingdetail";
	}
	
	@PostMapping("/delete-posting")//게시글 삭제
	public String deletePosting(Long pno) {
		postingService.deletePostingService(pno);
		return "redirect:/board/list-posting";
	}
	
	@GetMapping("/update-posting-form")//게시글 수정화면 이동
	public String updatePostingForm(Long pno, Model model) {
		model.addAttribute("posting", postingService.detailPostingService(pno));
		model.addAttribute("boardDTO", boardService.listBoardService());
		
		return "/board/posting/b_postingupdateform";
	}
	
	@PostMapping("/update-posting")//게시글 수정
	public String updatePosting(PostingVO posting, RedirectAttributes rttr ) {
		
		boolean result = false;
		result = postingService.updatePostingService(posting);
		
		System.out.println("업데이트 성공 여부 : " + result);
		
		rttr.addFlashAttribute("pno" , posting.getPosting_number());
		
		return "redirect:/board/posting?pno=" + posting.getPosting_number();
	}
	
	@PostMapping("/delete-all-list")//게시글 리스트 모두 삭제
	public String deletePostingList(HttpServletRequest request, Model model) {
		int result = 0;
		result = postingService.deletePostingListService(request);
		
		if(result == -1) {
			model.addAttribute("result", result);
		}
		
		return "redirect:/board/list-posting";
	}
}
