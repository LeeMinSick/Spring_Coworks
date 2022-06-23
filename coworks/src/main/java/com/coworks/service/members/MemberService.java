package com.coworks.service.members;

import com.coworks.domain.members.DepartmentVO;
import com.coworks.domain.members.LevelVO;
import com.coworks.domain.members.MemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface MemberService {
    ArrayList<MemberVO> getMemberList();
    ArrayList<LevelVO> getLevelList();
    MemberVO getMemberInfo(int membershipNumber);
    void updateLevelList(List<LevelVO> list);
    int getLevelSize();
    void deleteLevelList(int levelId);
    ArrayList<DepartmentVO> getDepartmentList();
    void insertDepartment(DepartmentVO departmentVO);
    void deleteDepartment(DepartmentVO departmentVO);
}
