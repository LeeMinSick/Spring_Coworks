package com.coworks.board.domain;


import java.io.Serializable;
import java.util.List;

import lombok.Data;

@Data
public class PostingList implements Serializable{
	private List<PostingVO> list;
	private int requestPage;
	private int totalPageCount;
	private int startPage;
	private int endPage;
	
	
	
	
}
