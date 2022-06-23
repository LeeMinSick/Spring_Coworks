package com.coworks.domain.members;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;

@Setter
@Getter
@NoArgsConstructor
@ToString
public class LevelVO {
    ArrayList<LevelVO> levelList = new ArrayList<LevelVO>();
    int levelId;
    String position;
    String rank;
    String employmentType;
}

