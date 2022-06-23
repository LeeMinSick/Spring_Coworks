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
                            <a class="nav-link" href="source/layout-static.html">조직</a>
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
                    <h1 class="mt-4">직책/직급/고용형태</h1>
                    <button type="button" class="btn btn-outline-primary" style="float:right" onclick="add()">추가
                    </button>
                    <button type="button" class="btn btn-outline-primary" style="float:right" onclick="update()">수정완료
                    </button>
                    <c:set var="count" value="1"/>

                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item disabled"><a href="/admin/level">직책</a></li>
                        <li class="breadcrumb-item"><a href="rank">직급</a></li>
                        <li class="breadcrumb-item disabled"><a href="employment-type">고용형태</a></li>
                    </ol>
                    <%--tables--%>
                    <table class="table table-striped table-hover" id="table">
                        <thead>
                        <tr>
                            <th width="30%">순서</th>
                            <th>직급</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:set var="count" value="1"/>
                        <%--                        <c:forEach var="level" items="${listLevel}" varStatus="status">--%>
                        <%--                            <c:if test="${level.position != null}">--%>
                        <%--                                <tr>--%>
                        <%--                                    <td>${count}</td>--%>
                        <%--                                    <c:set var="count" value="${count + 1}"/>--%>
                        <%--                                    <td><input type="text" value="${level.position}" style="border-color:silver; background:transparent;"/></td>--%>
                        <%--                                </tr>--%>
                        <%--                            </c:if>--%>
                        <%--                        </c:forEach>--%>
                        <c:forEach begin="1" end="${size}" step="1" var="i">
                            <c:if test="${level.levelList[i].rank != null}">
                                <tr>
                                    <td>
                                        <div>${count}</div>
                                        <input type="hidden" name="levelId" value="${level.levelList[i].levelId}"/>
                                    </td>

                                    <c:set var="count" value="${count + 1}"/>
                                    <td><input type="text" style="background:transparent; height:35px;"
                                               value="${level.levelList[i].rank}"/></td>
                                    <td>
                                        <button type="submit" class="btn btn-outline-primary"
                                                onclick="deleteRow(${level.levelList[i].levelId}, ${count} - 1)"
                                        >삭제
                                        </button>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>
                        <script>
                            var count = 0;
                            var count_row = 0;

                            function add() {
                                var my_tbody = document.getElementById('table');
                                count_row = my_tbody.getElementsByTagName("tr")[my_tbody.rows.length - 1].getElementsByTagName("td")[0].getElementsByTagName("div")[0].innerHTML;
                                var row = my_tbody.insertRow(my_tbody.rows.length);
                                count += 1;
                                var cell1 = row.insertCell(0);
                                var cell2 = row.insertCell(1);
                                var cell3 = row.insertCell(2);
                                $.ajax({
                                    url: 'get-level-size',
                                    type: "GET",
                                    contentType: 'application/json',
                                    dataType: 'json',
                                    success: function (result) {

                                    }
                                })
                                <%--let new_inputTag = document.createElement('input');--%>
                                <%--new_inputTag.setAttribute('value', ${size} +count);--%>
                                <%--new_inputTag.setAttribute('type', 'hidden');--%>
                                <%--new_inputTag.setAttribute('name', 'levelId');--%>
                                <%--console.log(${size} +count);--%>
                                <%--cell1.appendChild(new_inputTag);--%>
                                <%--cell1.innerHTML = parseInt(count_row) + 1;--%>
                                var totalSize = ${size} +count;
                                var rowNum = parseInt(count_row) + 1;
                                console.log(rowNum);
                                console.log(${size});
                                cell1.innerHTML = "<div>" + rowNum + "</div>" + "<input type='hidden' name='levelId' value='" + totalSize + "'/>"
                                cell2.innerHTML = "<input type='text' style='background:transparent; height:35px;'/>";
                                cell3.innerHTML = "<button type='submit' class='btn btn-outline-primary' onclick='deleteRow(" + totalSize + ")'>삭제</button>";
                            }

                            function update() {
                                var uri = "level-update";
                                var codeArr = [];
                                var dataObj = {};
                                console.log("length : " + $('#table tbody tr').length);
                                for (var i = 0; i < $('#table tbody tr').length; i++) {
                                    var levelId = $('#table tbody tr').eq(i).children().eq(0).children().eq(1).val();
                                    var rank = $('#table tbody tr').eq(i).children().eq(1).children().val();
                                    console.log("levelId : " + levelId);
                                    dataObj.levelId = levelId;
                                    dataObj.rank = rank;

                                    codeArr.push(dataObj);
                                    dataObj = {};
                                }

                                var jsonData = JSON.stringify(codeArr);
                                // console.log(codeArr);
                                console.log(jsonData);
                                $.ajax({
                                    contentType: 'application/json',
                                    type: "POST",
                                    url: 'level-rank-update-json',
                                    dataType: 'json',
                                    data: jsonData,
                                    success: function (result) {
                                        alert("수정 완료");
                                        location.href="rank";
                                    },
                                    error: function (er) {
                                        console.log(er);
                                    }
                                })
                            }

                            function deleteRow(i, count) {
                                console.log(i);
                                var levelId = {"levelId": i};
                                $.ajax({
                                        contentType: 'application/json',
                                        type: "POST",
                                        url: 'level-delete-json',
                                        dataType: 'json',
                                        data: JSON.stringify(levelId),
                                        success: function () {
                                            alert("delete");
                                        }
                                    }
                                )
                                var rowNum = $('#table tbody tr').eq(count - 1).children().eq(0).children().eq(0).text();
                                console.log("rowNum : " + rowNum);
                                document.getElementById('table').getElementsByTagName("tr")[rowNum].remove();
                            }
                        </script>
                        </tbody>
                    </table>
                    <%--                            tables end--%>
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

