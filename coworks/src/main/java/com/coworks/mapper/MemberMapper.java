package com.coworks.mapper;

import com.coworks.domain.DepartmentVO;
import com.coworks.domain.LevelVO;
import com.coworks.domain.MemberVO;

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
