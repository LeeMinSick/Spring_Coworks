<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--
id to class (3개)
layoutSidenav
layoutSidenav_nav
layoutSidenav_content
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Static Navigation - SB Admin</title>
    <link href="/resources/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/31.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/admin-modal.css">
    <link href="/resources/css/main.css" rel="stylesheet">

    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
    <script src="/resources/js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

</head>
<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Sidebar Toggle-->
    <button class="btn b+
    .*+++++++3
    tn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.html"><b>NAVER WORKS</b> Admin</a>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                   aria-describedby="btnNavbarSearch"/>
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
               aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#!">Settings</a></li>
                <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                <li>
                    <hr class="dropdown-divider"/>
                </li>
                <li><a class="dropdown-item" href="#!">Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div class="layoutSidenav">
    <div class="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts"
                       aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fa-regular fa-building">
                            <ㅑ
                            /i></div>
                        구성원
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                         data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/admin/member">구성원</a>
                            <a class="nav-link" href="source/layout-static.html">구성원 초대</a>
                            <a class="nav-link" href="/admin/department">조직</a>
                            <a class="nav-link" href="source/layout-static.html">그룹</a>
                            <a class="nav-link" href="/admin/level">직책/직급/고용형태</a>
                            <a class="nav-link" href="source/layout-static.html">상태</a>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                <b>NAVER</b> WORKS Admin
            </div>
        </nav>
    </div>
    <div class="layoutSidenav_content">
        <main>
            <div class="layoutSidenav">
                <div class="layoutSidenav_content">
                    <main>
                        <!--NaverWorks 추출-->
                        <div class="wrap ko_KR region_kr sub_page lnb_hide_large ua_win">
                            <div class="contents sub member"><p class="sub_h_tit"><strong></strong></p>
                                <div class="contents_head">
                                    <ul class="breadcrumbs">
                                        <li class="item"><a href="/">메인</a></li>
                                        <li class="item"><a href="#">구성원</a></li>
                                        <li class="item"><a href="#">구성원</a></li>
                                        <li class="item"><a href="#">구성원 정보</a></li>
                                        +
                                    </ul>

                                    <div class="title_cover"><h3 class="title"><span class="txt">구성원 정보</span>


                                        <a href="#"
                                           class="btn_help_contents"><i
                                                class="blind">도움말</i></a> <a href="#" class="link_back">이전으로
                                            돌아가기</a></h3>
                                        <div class="task_area">
                                            <div class="btn_combo">
                                                <button type="button" class="lw_btn_drop btn_more">더보기</button>
                                                <div class="ly_context" style="display: none;">
                                                    <ul>
                                                        <li><a href="#">앱 사용 차단</a></li>
                                                        <li><a href="#">휴직 설정</a></li>
                                                        <li><a href="#">계정 삭제</a></li>
                                                        <li><a href="#">일시 정지</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div id="root">
                                                <button type="button" id="modal_open_btn" class="lw_btn_point">구성원 수정
                                                </button>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                                <%-- modal --%>
                                <div id="modal">

                                    <div class="modal_content">
                                        <a href="https://nid.naver.com/user2/V2Join.nhn?m=agree#agreeBottom"
                                           target="_blank" title="네이버 회원가입 페이지 보러가기"><img src="NAVER_CI_Green.png"
                                                                                          id="logo"></a>
                                        <!-- wrapper -->
                                        <div id="wrapper">

                                            <!-- content-->
                                            <div id="content">

                                                <!-- ID -->
                                                <div>
                                                    <h3 class="join_title">
                                                        <label for="id">아이디</label>
                                                    </h3>
                                                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20">
                        <span class="step_url">@naver.com</span>
                    </span>
                                                    <span class="error_next_box"></span>
                                                </div>

                                                <!-- PW1 -->
                                                <div>
                                                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                                                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                                                    <span class="error_next_box"></span>
                                                </div>

                                                <!-- PW2 -->
                                                <div>
                                                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                                                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                                                    <span class="error_next_box"></span>
                                                </div>

                                                <!-- NAME -->
                                                <div>
                                                    <h3 class="join_title"><label for="name">이름</label></h3>
                                                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                                                    <span class="error_next_box"></span>
                                                </div>

                                                <!-- BIRTH -->
                                                <div>
                                                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                                                    <div id="bir_wrap">
                                                        <!-- BIRTH_YY -->
                                                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                                                        </div>

                                                        <!-- BIRTH_MM -->
                                                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                                                        </div>

                                                        <!-- BIRTH_DD -->
                                                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                                                        </div>

                                                    </div>
                                                    <span class="error_next_box"></span>
                                                </div>

                                                <!-- GENDER -->
                                                <div>
                                                    <h3 class="join_title"><label for="gender">성별</label></h3>
                                                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>
                    </span>
                                                    <span class="error_next_box">필수 정보입니다.</span>
                                                </div>

                                                <!-- EMAIL -->
                                                <div>
                                                    <h3 class="join_title"><label for="email">본인확인 이메일<span
                                                            class="optional">(선택)</span></label></h3>
                                                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                                                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
                                                </div>

                                                <!-- MOBILE -->
                                                <div>
                                                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                                                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                                                    <span class="error_next_box"></span>
                                                </div>


                                                <!-- JOIN BTN-->
                                                <div class="btn_area">
                                                    <button type="button" id="btnJoin">
                                                        <span>가입하기</span>
                                                    </button>
                                                </div>


                                            </div>
                                            <!-- content-->

                                        </div>
                                        <!-- wrapper -->
                                        <script src="main.js"></script>
<%--                                        --%>
<div> 이름&nbsp&nbsp&nbsp<input type="text" name="name" value="${member.name}"/>
</div>
<br>

<div> ID&nbsp&nbsp&nbsp<input type="text" name="id" value="${member.id}"/>
</div>
<br>

<div> 이름&nbsp&nbsp&nbsp<input type="text" name="name"/>
</div>
<br>

<div> 이름&nbsp&nbsp&nbsp<input type="text" name="name"/>
</div>
<br>

<div> 이름&nbsp&nbsp&nbsp<input type="text" name="name"/>
</div>
<br>


<form:form action="insertDepartment" method="post">
    <div>상위 부서&nbsp&nbsp&nbsp
        <select name="parentDepNum">
            <option value="0">없음</option>
            <c:forEach begin="0" end="${size}" step="1" var="i">
                <option value="${department.departmentList[i].departmentNumber}">${department.departmentList[i].departmentName}</option>
            </c:forEach>
        </select>

    </div>
    <br>
    <div> 부서 이름&nbsp&nbsp&nbsp<input type="text" name="departmentName"/>
    </div>
    <br>
    <div>부서장&nbsp&nbsp&nbsp<input type="text" name="departmentMaster"/>
    </div>
    <br>
    <button type="submit" class="btn btn-outline-primary" id="modal_close_btn">추가</button>
</form:form>
<br>
<button type="button" class="btn btn-outline-primary" onclick="location.href='member-detail'">취소</button>
</div>
<div class="modal_layer"></div>
</div>

<style>
    #modal {
        display: none;
        position: relative;
        width: 100%;
        height: 100%;
        z-index: 1;
    }

    #modal h2 {
        margin: 0;
    }

    #modal button {
        display: inline-block;
        width: 100px;
        margin-left: calc(100% - 100px - 10px);
    }

    #modal .modal_content {
        width: 300px;
        margin: 100px auto;
        padding: 20px 10px;
        background: #fff;
        border: 2px solid #666;
    }

    #modal .modal_layer {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        z-index: -1;
    }
</style>

<script>
    $("#modal_open_btn").click(function () {
        $("#modal").fadeIn();
        $("#modal").attr("style", "display:block");
    });

    $("#modal_close_btn").click(function () {
        $("#modal").fadeOut();
        $("#modal").attr("style", "display:none");
    });
</script>
<%-- modal end--%>
<div class="contents_body dashboard">
    <div class="fm_members minimize">
        <div class="member">
            <div class="thumb"><span class="thmb_area"><img
                    src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"
                    alt=""></span><span class="f_pic"><a
                    href="#">등록</a></span><input type="file"
                                                 accept="image/x-png, image/jpeg"
                                                 style="display: none;">
            </div>
            <div class="infor">
                <div class="name"><strong>${member.name} </strong></div>
                <div class="box"><span class="position">${member.rank}</span><span
                        class="email">${member.id}</span>
                    <div class="status"><p class="point">${member.status}</p></div>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="field"><i class="hd">원직 회사·소속</i>
                <ul class="list">
                    <li class="box"><em class="h_li">회사</em><span
                            class="txt">coworks</span>
                    </li>
                    <li class="box"><em class="h_li">조직/직책</em>
                        <ul class="txt_box">${member.position}</ul>
                    </li>
                    <li class="box"><em class="h_li">고용형태</em><span
                            class="txt">${member.employmentType}</span></li>

                    <li class="box"><em class="h_li">직급</em><span
                            class="txt">${member.rank}</span>
                    </li>
                    <li class="box"><em class="h_li">휴대폰</em><span
                            class="txt">${member.cellNum}</span>
                        <ul class="txt_box"></ul>
                    </li>
                    <li class="box"><em class="h_li">ID</em><span
                            class="txt">${member.id}</span></li>
                    <ul class="txt_box"></ul>
                    </li>
                    <li class="box"><em class="h_li">개인 이메일</em><a href="#"
                                                                   class="link">${member.email}</a>
                    </li>
                    <li class="box"><em class="h_li">생년월일</em><span
                            class="txt">${member.birthDate}</span></li>
                    <li class="box"><em class="h_li">입사일</em><span
                            class="txt">${member.dateOfEntry}</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="settings">
        <div class="col">
            <div class="set_device"><h4 class="tit">디바이스</h4>
                <p class="empty">사용 중인 디바이스가 없습니다.</p></div>
            <div class="set_log"><h4 class="tit">접속현황</h4>
                <ul>
                    <li class="box"><i class="hd">Chrome / Windows</i>
                        <div class="txt"><span>05-31 14:40</span><span
                                class="data">대한민국 (124.58.66.23)</span></div>
                    </li>
                    <li class="box"><i class="hd">Chrome / Windows</i>
                        <div class="txt"><span>05-14 03:22</span><span
                                class="data">대한민국 (124.58.66.23)</span></div>
                    </li>
                    <li class="box"><i class="hd">Chrome / Windows</i>
                        <div class="txt"><span>05-12 09:26</span><span
                                class="data">대한민국 (124.58.66.23)</span></div>
                    </li>
                </ul>
                <button type="button" class="btn_task">관리</button>
            </div>
        </div>
        <div class="col">
            <div class="set_usage"><h4 class="tit">사용 용량</h4>
                <ul>
                    <li class="svc_box"><i class="svc">메일</i>
                        <div class="graph"><span style="width: 0%;"></span>
                        </div>
                        <span class="infor"><strong>0GB</strong> / 30GB</span>
                    </li>
                </ul>
            </div>
            <div class="set_security"><h4 class="tit">보안 설정</h4><h5
                    class="h_tit">보안 설정</h5>
                <ul>
                    <li class="box"><i class="hd">비밀번호</i>
                        <div class="txt point">43일 전 변경</div>
                        <button type="button" class="btn">변경</button>
                    </li>
                    <li class="sub_box"><i class="hd">간편 로그인</i>
                        <div class="box"><i class="hd">휴대폰 로그인</i>
                            <div class="txt point">연결 안 됨</div>
                        </div>
                        <div class="box"><i class="hd">네이버로 로그인</i>
                            <div class="txt point">연결 안 됨</div>
                        </div>
                        <div class="box"><i class="hd">LINE으로 로그인</i>
                            <div class="txt point">연결 안 됨</div>
                        </div>
                    </li>
                    <li class="box"><i class="hd">구성원 검색 시 자동완성</i>
                        <div class="txt point">표시</div>
                    </li>
                </ul>
                <button type="button" class="btn_task">수정</button>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</main>
</div>
</div> <!--NaverWorks 추출 : end-->
</main>

<footer class="py-4 bg-light mt-auto">
    <div class="container-fluid px-4">
        <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; Your Website 2022</div>
            <div>
                <a href="#">Privacy Policy</a>
                &middot;
                <a href="#">Terms &amp; Conditions</a>
            </div>
        </div>
    </div>
</footer>

</div>
</div>
</body>

</html>

