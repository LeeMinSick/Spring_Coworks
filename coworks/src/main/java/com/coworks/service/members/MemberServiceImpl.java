package com.coworks.service.members;

import com.coworks.domain.members.DepartmentVO;
import com.coworks.domain.members.LevelVO;
import com.coworks.domain.members.MemberVO;
import com.coworks.mapper.members.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{
    private final MemberMapper memberMapper;

    @Autowired
    public MemberServiceImpl(MemberMapper memberMapper) {
        this.memberMapper = memberMapper;
    }

    @Override
    public MemberVO getMemberInfo(int membershipNumber) {
        return memberMapper.getMemberInfo(membershipNumber);
    }

    //조직
    @Override
    public ArrayList<DepartmentVO> getDepartmentList() {
        return memberMapper.getDepartmentList();
    }

    @Override
    public void insertDepartment(DepartmentVO departmentVO) {
        memberMapper.insertDepartment(departmentVO);
    }

    @Override
    public void deleteDepartment(DepartmentVO departmentVO) {
        memberMapper.deleteDepartment(departmentVO);
    }

    //직책/직급/고용형태
    @Override
    public void updateLevelList(List<LevelVO> list) {
        for (int i = 0; i < list.size(); i++){
            if (memberMapper.checkLevelId(list.get(i).getLevelId()) != 0){
                memberMapper.updateLevelList(list.get(i));
            }
            else{
                if (list.get(i).getPosition()==null && list.get(i).getRank() == null && list.get(i).getEmploymentType() == null)
                    continue;
                memberMapper.addLevelList(list.get(i));
            }
        }
    }

    @Override
    public int getLevelSize() {
        return memberMapper.getLevelSize();
    }

    @Override
    public void deleteLevelList(int levelId) {
        if (memberMapper.checkLevelId(levelId) != 0){
            memberMapper.deleteLevelList(levelId);
        }
    }

    @Override
    public ArrayList<MemberVO> getMemberList() {
        return memberMapper.getMemberList();
    }

    @Override
    public ArrayList<LevelVO> getLevelList() {
        return memberMapper.getLevelList();
    }
}
