package com.coworks.domain.board;


import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class CommentPageDTO {

  private int commentCnt;
  private List<CommentVO> list;
}
