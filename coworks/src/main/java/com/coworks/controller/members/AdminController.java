package com.coworks.controller.members;

import com.coworks.domain.members.DepartmentVO;
import com.coworks.domain.members.LevelVO;
import com.coworks.domain.members.MemberVO;
import com.coworks.service.members.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.HandlerMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private final MemberService memberService;

    @Autowired
    public AdminController(MemberService memberService) {
        this.memberService = memberService;
    }
    
    @RequestMapping("/test")
    public String test(Model model) {
        MemberVO memberVO = new MemberVO();
        memberVO.setMembershipNumber(1);
//        memberVO = memberService.getInfo(memberVO);

        model.addAttribute("member", memberVO);
        return "members/mybatis-test";
    }

    @RequestMapping("/init")
    public String init() {
        return "init-page";
    }

    @RequestMapping("/member")
    public String members(Model model) {
        ArrayList<MemberVO> listMember = memberService.getMemberList();
        DepartmentVO departmentVO = new DepartmentVO();
        departmentVO.setDepartmentList(memberService.getDepartmentList());

        model.addAttribute("department", departmentVO);
        model.addAttribute("size", departmentVO.getDepartmentList().size());
        model.addAttribute("listMember", listMember);
        System.out.println(listMember);
        return "members/member";
    }

    @RequestMapping("/member-detail")
    public String membersDetail(@ModelAttribute("member") MemberVO memberVO, Model model) {
        System.out.println(memberVO);
        memberVO = memberService.getMemberInfo(memberVO.getMembershipNumber());

        System.out.println(memberVO);
        model.addAttribute("member", memberVO);

        return "members/member_detail";
    }
    //조직
    @RequestMapping("/department")
    public String department(Model model){
        DepartmentVO departmentVO = new DepartmentVO();
        departmentVO.setDepartmentList(memberService.getDepartmentList());
        model.addAttribute("department", departmentVO);
        model.addAttribute("size", departmentVO.getDepartmentList().size());
        System.out.println("department List : " + departmentVO.getDepartmentList());
        return "members/department";
    }

    @RequestMapping("/insertDepartment")
    public String insertDepartment(@ModelAttribute DepartmentVO departmentVO){
        System.out.println(departmentVO);
        memberService.insertDepartment(departmentVO);

        return "redirect:department";
    }

    @RequestMapping("/deleteDepartment")
    public String deleteDepartment(@ModelAttribute DepartmentVO departmentVO){
        memberService.deleteDepartment(departmentVO);
        System.out.println(departmentVO);
        return "redirect:department";
    }


    //직책/직급/고용형태
    @RequestMapping(value = {"/level", "/rank", "/employment-type"})
    public String levels(Model model, HttpServletRequest request) {
//        ArrayList<LevelVO> listLevel = memberService.getLevelList();
//        model.addAttribute("listLevel", listLevel);

        LevelVO levelVO = new LevelVO();
        levelVO.setLevelList(memberService.getLevelList());
        model.addAttribute("level", levelVO);
        model.addAttribute("size", levelVO.getLevelList().size());
        //mapping된 uri 확인
        String requestUrl = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        if (requestUrl.equals("/admin/level")) {
            return "members/level";
        } else if (requestUrl.equals("/admin/rank")) {
            return "members/level_rank";
        } else {
            return "members/level_employmentType";
        }
    }

    @GetMapping("/get-level-size")
    @ResponseBody
    public ResponseEntity<Integer> getLevelSize() {
        int result = memberService.getLevelSize();
        System.out.println("result = " + result);
        return new ResponseEntity<Integer>(result, HttpStatus.OK);
    }

    @RequestMapping({"/level-update", "/level-rank-update", "/level-employment-type-update"})
    public String levelUpdate(Model model, HttpServletRequest request) {
        LevelVO levelVO = new LevelVO();
        levelVO.setLevelList(memberService.getLevelList());
        model.addAttribute("level", levelVO);
        model.addAttribute("size", levelVO.getLevelList().size());

//        JsonArray array = JsonArray.fromObject(commandMap.get("code"));


        //mapping된 uri 확인
        String requestUrl = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        if (requestUrl.equals("/admin/level-update")) {
            return "members/level_update";
        } else if (requestUrl.equals("/admin/level-rank-update")) {
            return "members/level_rank_update";
        } else {
            return "members/level_employmentType_update";
        }
    }

    @RequestMapping(value = {"/level-update-json", "/level-rank-update-json", "/level-employment-type-update-json"}, consumes = "application/json")
    @ResponseBody
    public ResponseEntity<Map<String, String>> levelUpdateJson(@RequestBody List<LevelVO> list, Model model, HttpServletRequest request) {

        LevelVO levelVO = new LevelVO();
        System.out.println("list : " + list);
        memberService.updateLevelList(list);

        levelVO.setLevelList(memberService.getLevelList());
        model.addAttribute("level", levelVO);
        model.addAttribute("size", levelVO.getLevelList());
//        HashMap<String, Object> resultMap = new HashMap<String, Object>();
//
//        for (Map.Entry<String, Object> entrySet : codeArrObj.entrySet()) {
//            System.out.println(entrySet.getKey() + " : " + entrySet.getValue());
//            try {
//                //memberService.updateUserInfo(codeArrObj);
//            } catch (Exception e) {
//                resultMap.put("message", e.getMessage());
//                return new ResponseEntity<>(resultMap, HttpStatus.OK);
//            }
//
//        }

        String requestUrl = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        if (requestUrl.equals("/admin/level-update-json")) {
            return levelVO.getLevelList().size() != 0 ?
                    new ResponseEntity<>(Map.of("result", "members/level-update"), HttpStatus.OK)
                    : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        } else if (requestUrl.equals("/admin/level-rank-update-json")) {
            return levelVO.getLevelList().size() != 0 ?
                    new ResponseEntity<>(Map.of("result", "members/level-rank-update"), HttpStatus.OK)
                    : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            //return new ResponseEntity<>("members/level_rank_update", HttpStatus.OK);
        } else {
            return levelVO.getLevelList().size() != 0 ?
                    new ResponseEntity<>(Map.of("result", "members/level-employment-type-update"), HttpStatus.OK)
                    : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            //return new ResponseEntity<>("members/level_employmentType_update", HttpStatus.OK);
        }
//        return service.updateCommentService(commentVO) == 1
//                ? new ResponseEntity<>("success", HttpStatus.OK)
//                : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @RequestMapping(value = {"/level-delete-json", "/level-rank-delete-json", "/level-employment-type-delete-json"}, consumes = "application/json")
    @ResponseBody
    public String levelDeleteJson(@RequestBody LevelVO levelVO, Model model, HttpServletRequest request) {
        System.out.println("levelId : " + levelVO.getLevelId());

        memberService.deleteLevelList(levelVO.getLevelId());
        levelVO.setLevelList(memberService.getLevelList());
        model.addAttribute("level", levelVO);
        model.addAttribute("size", levelVO.getLevelList());

        String requestUrl = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        if (requestUrl.equals("/admin/level-delete-json")) {
            return "members/level-delete";
        } else if (requestUrl.equals("/admin/level-rank-delete-json")) {
            return "members/level_rank_update";
        } else {
            return "members/level_employmentType_update";
        }
    }

    @RequestMapping("group")
    public String group(){

        return "members/group";
    }

    @PostMapping("/my-test")
    @ResponseBody // @Controller + @ResponseBody = @REstController
    public ResponseEntity<MemberVO> getJson(@RequestBody MemberVO memberVO) {

        System.out.println(memberVO);
//        memberVO = memberService.getInfo(memberVO);

        System.out.println(memberVO);

        return new ResponseEntity<>(memberVO, HttpStatus.OK);
    }
}