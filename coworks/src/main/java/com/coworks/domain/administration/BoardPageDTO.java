package com.coworks.domain.administration;

import java.util.List;


import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class BoardPageDTO {
	private List<BoardVO> list;
	private int boardCnt;
	
}
