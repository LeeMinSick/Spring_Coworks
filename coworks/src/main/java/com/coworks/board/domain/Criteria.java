package com.coworks.board.domain;


import java.io.Serializable;

import lombok.Data;

@Data
public class Criteria implements Serializable{
	private int start;//시작 로우
	private int end;//끝 로우
	private String board;
	private String contents;
	private String regdate;
	
	
	
	
}
