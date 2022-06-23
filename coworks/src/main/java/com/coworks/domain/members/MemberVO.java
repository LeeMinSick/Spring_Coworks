package com.coworks.domain.members;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter

//파라미터에 아무것도 없는 생성자
@NoArgsConstructor

//모든 파라미터 생성자
@AllArgsConstructor

//ToString Method
@ToString
public class MemberVO {
    private int membershipNumber;
    private String name;
    private String id;
    private String password;
    private String location;
    private String position;
    private String rank;
    private String employmentType;
    private String status;
    private String email;
    private String cellNum;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private String birthDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private String dateOfEntry;
    private int annualDate;
    private int departmentNumber;
}
