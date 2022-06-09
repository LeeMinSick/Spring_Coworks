package com.coworks.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coworks.board.domain.PostingVO;
import com.coworks.board.service.PostingServiceImpl;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/")
@Log4j
public class PostingController {
	
	
	@Autowired
	private PostingServiceImpl postingService;
	
	
	@GetMapping("/list-posting")//게시글 출력 화면
	public String listPosting(Model model) {
		model.addAttribute("list", postingService.listPostingService());
	
		return "/board/posting/b_postinglist";
	}
	
	@GetMapping("/register-posting-form")//게시글 작성화면 이동
	public String insertPostingForm() {
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
	public String main() {
		return "/board/posting/b_main";
	}
	
	@GetMapping("/posting")//게시글 세부사항보기
	public String detailPosting(Model model, Long pno) {
		model.addAttribute("posting", postingService.detailPostingService(pno));
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
	public String deletePostingList(HttpServletRequest request) {
		
		postingService.deletePostingListService(request);
		
		return "redirect:/board/list-posting";
	}
}
