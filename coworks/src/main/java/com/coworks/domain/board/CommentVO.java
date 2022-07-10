package com.coworks.domain.board;



import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {

	private long comment_number;
	private String comment_name;
	private String comment_contents;
	private String comment_file;
	private String comment_emoji;
	private String comment_date_of_registration;
	private String isReply;
	private long posting_number;
	private long reply_number;

}
