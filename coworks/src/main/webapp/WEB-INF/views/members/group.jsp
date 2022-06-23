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
                            <a class="nav-link" href="/admin/members">구성원</a>
                            <a class="nav-link" href="source/layout-static.html">구성원 초대</a>
                            <a class="nav-link" href="source/layout-static.html">조직</a>
                            <a class="nav-link" href="source/layout-static.html">그룹</a>
                            <a class="nav-link" href="source/layout-static.html">직책/직급/고용형태</a>
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
                    <%--
                                            tables--%>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>이름</th>
                            <th>직급</th>
                            <th>계정 상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%--                                <form:form action="/admin/my-test" method="post">--%>
                        <%--                                    <input type="text" id="a" value="" name="membershipNumber"/>--%>
                        <%--                                    <button type="button" onclick="foo()">json</button>--%>


                        <%--                                </form:form>--%>
                        <c:forEach var="member" items="${listMember}">
                            <tr>
                                <td>${member.name}</td>
                                <td>${member.position}</td>
                                <td>${member.status}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <%--                            tables end--%>


                    <h1 class="mt-4">Sidenav Light</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active">Sidenav Light</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">
                            This page is an example of using the light side navigation option. By appending the
                            <code>.sb-sidenav-light</code>
                            class to the
                            <code>.sb-sidenav</code>
                            class, the side navigation will take on a light color scheme. The
                            <code>.sb-sidenav-dark</code>
                            is also available for a darker option.
                        </div>
                    </div>
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

