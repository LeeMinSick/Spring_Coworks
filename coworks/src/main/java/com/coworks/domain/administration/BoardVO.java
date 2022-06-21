package com.coworks.domain.administration;

import lombok.Data;

@Data
public class BoardVO {
	private Long board_number;
	private String board_name;
	private String board_description;
	private String board_type = "게시판";
	private String board_template;
	private char board_main_exposure;
	private Long board_top_menu_number;
	private Long board_admin_number = 1L;
	private int postingCnt;
}
