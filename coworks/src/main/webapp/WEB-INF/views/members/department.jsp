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
    <title>Static Navigation - SB Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <link href="/resources/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/31.css">
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
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
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
                        <div class="sb-nav-link-icon"><i class="fa-regular fa-building"></i></div>
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
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">조직</h1>
                    <%-- modal --%>
                    <div id="root">
                        <button type="button" id="modal_open_btn" class="btn btn-outline-primary" style="float:right; margin-left:3px;">
                            추가
                        </button>

                        <button type="button" id="modal_open_btn2" class="btn btn-outline-primary" style="float:right">
                            삭제
                        </button>
                    </div>

                    <div id="modal">
                        <div class="modal_content">
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
                            <button type="button" class="btn btn-outline-primary" onclick="location.href='department'">닫기</button>
                        </div>
                        <div class="modal_layer"></div>
                    </div>

                    <div id="modal2">
                        <div class="modal_content">
                            <form:form action="deleteDepartment" method="post">
                                <div>삭제할 부서를 선택해주세요
                                    <select name="departmentNumber">
                                        <option value="0">없음</option>
                                        <c:forEach begin="0" end="${size}" step="1" var="i">
                                            <option value="${department.departmentList[i].departmentNumber}">${department.departmentList[i].departmentName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-outline-primary" id="modal_close_btn">삭제</button>
                            </form:form>
                            <br>
                            <button type="button" class="btn btn-outline-primary" onclick="location.href='department'">닫기</button>
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

                    <style>
                        #modal2 {
                            display: none;
                            position: relative;
                            width: 100%;
                            height: 100%;
                            z-index: 1;
                        }

                        #modal2 h2 {
                            margin: 0;
                        }

                        #modal2 button {
                            display: inline-block;
                            width: 100px;
                            margin-left: calc(100% - 100px - 10px);
                        }

                        #modal2 .modal_content {
                            width: 300px;
                            margin: 100px auto;
                            padding: 20px 10px;
                            background: #fff;
                            border: 2px solid #666;
                        }

                        #modal2 .modal_layer {
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

                        $("#modal_open_btn2").click(function () {
                            $("#modal2").fadeIn();
                            $("#modal2").attr("style", "display:block");
                        });

                        $("#modal_close_btn").click(function () {
                            $("#modal").fadeOut();
                            $("#modal").attr("style", "display:none");
                        });
                    </script>


                    <%-- modal end--%>


                    <%--
                                                tables--%>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>조직명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp조직장
                        </tr>
                        <td></td>
                        </thead>
                        <tbody>
                        <%--                                <form:form action="/admin/my-test" method="post">--%>
                        <%--                                    <input type="text" id="a" value="" name="membershipNumber"/>--%>
                        <%--                                    <button type="button" onclick="foo()">json</button>--%>
                        <c:forEach begin="0" end="${size}" step="1" var="i">
                            <c:if test="${department.departmentList[i].parentDepNum == 0}">
                                <tr>
                                    <td>
                                        <nav class="sb-sidenav accordion sb-sidenav-light"
                                             id="depart${department.departmentList[i].departmentNumber}">
                                            <div class="sb-sidenav-menu">
                                                <div class="nav">
                                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                                                       data-bs-target="#dep${department.departmentList[i].departmentNumber}"
                                                       aria-expanded="false"
                                                       aria-controls="dep${department.departmentList[i].departmentNumber}">
                                                        <i class="fas fa-angle-down" style="margin-right:3px"></i>
                                                        <b>${department.departmentList[i].departmentName}</b>&nbsp
                                                        조직장:${department.departmentList[i].departmentMaster}
                                                    </a>
                                                </div>

                                            </div>
                                        </nav>
                                    </td>
                                </tr>
                            </c:if>
                            <script>
                                function child(num, name, master) {
                                    if (num != '' && name != '') {
                                        console.log(num);
                                        console.log(name);
                                        var nav = $('#depart' + num).children().children().html()
                                        console.log(nav)
                                        $('#depart' + num).children().children().html(
                                            nav
                                            + '<div class="collapse" id="dep' + num + '" aria-labelledby="headingOne" data-bs-parent="#depart' + num + '"> <nav class="sb-sidenav-menu-nested nav"> <a class="nav-link" href="layout-static.html">'
                                            + '<b>' + name + '</b>'
                                            + '&nbsp&nbsp&nbsp조직장:'
                                            + master
                                            + '</a></nav></div>')
                                    }
                                }
                            </script>
                            <c:if test="${department.departmentList[i].parentDepNum != 0}">
                                <script>child('${department.departmentList[i].parentDepNum}', '${department.departmentList[i].departmentName}', '${department.departmentList[i].departmentMaster}')</script>
                            </c:if>
                        </c:forEach>


                        </tbody>
                    </table>
                </div>
            </main>
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

