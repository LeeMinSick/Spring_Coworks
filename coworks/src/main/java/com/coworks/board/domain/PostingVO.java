package com.coworks.board.domain;


import java.io.Serializable;

import lombok.Data;

@Data
public class PostingVO implements Serializable{
	private long posting_number;
	private String posting_title;
	private String posting_contents = "";
	private boolean posting_favorites;
	private boolean posting_mandatory;
	private String posting_file;
	private long posting_hitpoint;
	private long comment_number;
	private String posting_writer = "홍길동";
	private String posting_date_of_registration;
	private String isDeleted = "0";
	private long board_number = 1;
	private String membership_number = "1";
	
	
	

	
	
}
