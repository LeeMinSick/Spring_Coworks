package com.coworks.controller;


import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.coworks.domain.board.CommentPageDTO;
import com.coworks.domain.board.CommentVO;
import com.coworks.service.board.CommentServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/comment/")
@RestController
@Log4j
@AllArgsConstructor
public class CommentController {
	
	private CommentServiceImpl service;
	
	//댓글 생성
	@PostMapping(value = "/new",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE} )
	public ResponseEntity<String> create(@RequestBody CommentVO commentVO){
		commentVO.setComment_name("고길동");
		int insertCount = service.insertCommentService(commentVO);
		
		return insertCount == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/pages/{posting_number}",
			produces = {
					MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<CommentPageDTO> getList(@PathVariable("posting_number") Long posting_number){
		
		return new ResponseEntity<>(service.getListCommentService(posting_number), HttpStatus.OK);
	
	}
	
	@GetMapping(value = "/{comment_number}",
			produces = {
					MediaType.APPLICATION_JSON_VALUE,
					MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<CommentVO> get(@PathVariable("comment_number") Long comment_number){
		
		return new ResponseEntity<>(service.getCommentService(comment_number), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/{comment_number}",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("comment_number") Long comment_number){
		
		return service.deleteCommentService(comment_number) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/{comment_number}",
			consumes = "application/json",
			produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(
			@RequestBody CommentVO commentVO,
			@PathVariable("comment_number") Long comment_number){
		
		System.out.println(commentVO);
		System.out.println(comment_number);
		
		if(comment_number != commentVO.getComment_number()) {
			return null;
		}
		
		
		return service.updateCommentService(commentVO) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	
	
	
}
