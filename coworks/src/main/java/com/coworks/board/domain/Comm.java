package com.coworks.board.domain;

import java.io.Serializable;

import lombok.Data;


@Data
public class Comm implements Serializable{
	private int comm_number;
	private String comm_name = "�솉湲몃룞";
	private String comm_contents ="";
	private String comm_file;
	private String commt_emoji;
	private String comm_date_of_registration;
	private String isReply;
	private int posting_number;
	private int reply_number;
	
	
	
	
}
