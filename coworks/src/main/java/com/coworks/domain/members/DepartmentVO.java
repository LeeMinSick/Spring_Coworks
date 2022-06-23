package com.coworks.domain.members;


import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
@NoArgsConstructor
@Data

public class DepartmentVO {
    ArrayList<DepartmentVO> departmentList = new ArrayList<DepartmentVO>();
    int departmentNumber;
    String departmentName;
    String departmentMaster;
    int parentDepNum;
}
