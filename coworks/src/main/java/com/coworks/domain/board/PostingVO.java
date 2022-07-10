package com.coworks.domain.board;



import java.io.Serializable;

import lombok.Data;

@Data
public class PostingVO implements Serializable{
	private long posting_number;
	private String posting_title;
	private String posting_contents = "";
	private char posting_favorites;
	private char posting_mandatory;
	private String posting_file;
	private long posting_hitpoint;
	private long comment_number;
	private String posting_writer = "고길동";
	private String posting_date_of_registration;
	private String isDeleted = "0";
	private long board_number;
	private String membership_number = "1";
	
	
	

	
	
}
