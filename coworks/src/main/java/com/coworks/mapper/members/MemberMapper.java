package com.coworks.mapper.members;

import com.coworks.domain.members.DepartmentVO;
import com.coworks.domain.members.LevelVO;
import com.coworks.domain.members.MemberVO;

import java.util.ArrayList;

public interface MemberMapper {
    MemberVO getMemberInfo(int membershipNumber);
    ArrayList<MemberVO> getMemberList();
    ArrayList<LevelVO> getLevelList();
    void updateLevelList(LevelVO list);
    int getLevelSize();
    void addLevelList(LevelVO levelVO);
    int checkLevelId(int levelId);
    void deleteLevelList(int levelId);
    ArrayList<DepartmentVO> getDepartmentList();
    void insertDepartment(DepartmentVO departmentVO);
    void deleteDepartment(DepartmentVO departmentVO);
}
