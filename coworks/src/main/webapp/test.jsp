<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Board</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
    <!-- Template Main CSS File -->
    <link href="/resources/style.css" rel="stylesheet">
    <link href="/resources/board.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.13/dist/sweetalert2.min.css">
    <!--   <link href="../com/coworks/board/posting/view/board.css" rel="stylesheet" type="text/css"> -->
    <!-- =======================================================
    * Template Name: Mentor - v4.7.0
    * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <style type="text/css">
        h1 {
            font-weight: bold;
            display: inline-block;
            font-weight: bold;
        }

    </style>
</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center" id="nev">

        <h1 class="logo me-auto"><a href="/board/main">Coworks</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li><a class="active" href="/board/main">Board</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Courses</a></li>
                <li><a href="#">Trainers</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="#">Pricing</a></li>

                <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">Drop Down 1</a></li>
                        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                            <ul>
                                <li><a href="#">Deep Drop Down 1</a></li>
                                <li><a href="#">Deep Drop Down 2</a></li>
                                <li><a href="#">Deep Drop Down 3</a></li>
                                <li><a href="#">Deep Drop Down 4</a></li>
                                <li><a href="#">Deep Drop Down 5</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Drop Down 2</a></li>
                        <li><a href="#">Drop Down 3</a></li>
                        <li><a href="#">Drop Down 4</a></li>
                    </ul>
                </li>
                <li><a href="#">Contact</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>


        </nav><!-- .navbar -->

        <a href="#" class="get-started-btn">Get Started</a>
        <div class="nav-item dropdown pe-3" id="profile">

            <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
            </a><!-- End Profile Iamge Icon -->

            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                <li class="dropdown-header">
                    <h6>Kevin Anderson</h6>
                    <span>Web Designer</span>
                </li>
                <li>
                    <hr class="dropdown-divider">
                </li>

                <li>
                    <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                        <i class="bi bi-person"></i>
                        <span>My Profile</span>
                    </a>
                </li>
                <li>
                    <hr class="dropdown-divider">
                </li>

                <li>
                    <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                        <i class="bi bi-gear"></i>
                        <span>Account Settings</span>
                    </a>
                </li>
                <li>
                    <hr class="dropdown-divider">
                </li>

                <li>
                    <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                        <i class="bi bi-question-circle"></i>
                        <span>Need Help?</span>
                    </a>
                </li>
                <li>
                    <hr class="dropdown-divider">
                </li>

                <li>
                    <a class="dropdown-item d-flex align-items-center" href="#">
                        <i class="bi bi-box-arrow-right"></i>
                        <span>Sign Out</span>
                    </a>
                </li>

            </ul><!-- End Profile Dropdown Items -->
        </div>
    </div>
</header><!-- End Header -->

<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <div class="d-grid gap-2" style="margin-top: 7%">
                <button class="btn btn-lg btn-primary" type="button" id="button"
                        onClick="location.href='/board/register-posting-form'">글쓰기
                </button>
            </div>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span id="font">필독</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>필독1</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>필독2</span>
                    </a>
                </li>
            </ul>
        </li>   <!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-journal-text"></i><span id="font">즐겨찾기</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>즐겨찾기1</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>즐겨찾기2</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>즐겨찾기3</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>즐겨찾기4</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>즐겨찾기5</span>
                    </a>
                </li>
            </ul>
        </li> <!--  End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span id="font">자유게시판</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/board/list-posting">
                        <i class="bi bi-circle"></i><span>게시판1</span>
                    </a>
                </li>
            </ul>
        </li> <!--  End Tables Nav -->
    </ul>
</aside><!-- End Sidebar-->


<!--  start Board -->

<div class="row">
    <div class="ibox-content forum-container">
        <h1>최신글</h1>
        <div class="forum-item">
            <a href="#" class="more">더보기</a><br>
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	홍길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>

        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	홍길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	박길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	조길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	도길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	고길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	소길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	모길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <!-- 					<div class="forum-item"> -->
        <!-- 						<div class="row"> -->
        <!-- 							<div class="col-md-3"> -->
        <!-- 								<div class="forum-icon"> -->
        <!-- 									<i class="fa fa-bookmark"></i> -->
        <!-- 								</div> -->
        <!-- 								<a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a> -->
        <!-- 								<div class="forum-sub-title"></div> -->
        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>작성자 </small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 	나길동 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>등록일</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 2022-05-03 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>읽음</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>댓글개수</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->

        <!-- 							<div class="col-md-1 forum-info"> -->
        <!--                             <span class="views-number"> -->
        <!--                               <span class="fa-stack"> -->
        <!-- 										<i class="fa fa-square fa-stack-2x"></i> -->
        <!-- 										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i> -->
        <!-- 									</span> -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 						</div> -->
        <!-- 					</div> -->
        <!-- 					<div class="forum-item"> -->
        <!-- 						<div class="row"> -->
        <!-- 							<div class="col-md-3"> -->
        <!-- 								<div class="forum-icon"> -->
        <!-- 									<i class="fa fa-bookmark"></i> -->
        <!-- 								</div> -->
        <!-- 								<a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a> -->
        <!-- 								<div class="forum-sub-title"></div> -->
        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>작성자 </small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 	오길동 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>등록일</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 2022-05-03 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>읽음</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>댓글개수</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->

        <!-- 							<div class="col-md-1 forum-info"> -->
        <!--                             <span class="views-number"> -->
        <!--                               <span class="fa-stack"> -->
        <!-- 										<i class="fa fa-square fa-stack-2x"></i> -->
        <!-- 										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i> -->
        <!-- 									</span> -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 						</div> -->
        <!-- 					</div> -->
        <!-- 					<div class="forum-item"> -->
        <!-- 						<div class="row"> -->
        <!-- 							<div class="col-md-3"> -->
        <!-- 								<div class="forum-icon"> -->
        <!-- 									<i class="fa fa-bookmark"></i> -->
        <!-- 								</div> -->
        <!-- 								<a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a> -->
        <!-- 								<div class="forum-sub-title"></div> -->
        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>작성자 </small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 	로길동 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>등록일</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 2022-05-03 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>읽음</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>댓글개수</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->

        <!-- 							<div class="col-md-1 forum-info"> -->
        <!--                             <span class="views-number"> -->
        <!--                               <span class="fa-stack"> -->
        <!-- 										<i class="fa fa-square fa-stack-2x"></i> -->
        <!-- 										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i> -->
        <!-- 									</span> -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 						</div> -->
        <!-- 					</div> -->

    </div>
</div>

<div class="row">
    <div class="ibox-content forum-container">

        <div style="margin-bottom: 2%;">
            <h1>자유게시판</h1>
            <a href="#" class="more">더보기</a><br>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	홍길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	홍길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	박길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	조길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	도길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	고길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	소길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <div class="forum-item">
            <div class="row">
                <div class="col-md-3">
                    <div class="forum-icon">
                        <i class="fa fa-bookmark"></i>
                    </div>
                    <a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a>
                    <div class="forum-sub-title"></div>
                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>작성자 </small>
                    </div>
                    <span class="views-number">
                                	모길동
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>등록일</small>
                    </div>
                    <span class="views-number">
                                2022-05-03
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>읽음</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>
                <div class="col-md-2 forum-info">
                    <div>
                        <small>댓글개수</small>
                    </div>
                    <span class="views-number">
                                0
                            </span>

                </div>

                <div class="col-md-1 forum-info">
                            <span class="views-number">
                              <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
									</span>
                            </span>

                </div>
            </div>
        </div>
        <!-- 					<div class="forum-item"> -->
        <!-- 						<div class="row"> -->
        <!-- 							<div class="col-md-3"> -->
        <!-- 								<div class="forum-icon"> -->
        <!-- 									<i class="fa fa-bookmark"></i> -->
        <!-- 								</div> -->
        <!-- 								<a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a> -->
        <!-- 								<div class="forum-sub-title"></div> -->
        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>작성자 </small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 	나길동 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>등록일</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 2022-05-03 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>읽음</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>댓글개수</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->

        <!-- 							<div class="col-md-1 forum-info"> -->
        <!--                             <span class="views-number"> -->
        <!--                               <span class="fa-stack"> -->
        <!-- 										<i class="fa fa-square fa-stack-2x"></i> -->
        <!-- 										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i> -->
        <!-- 									</span> -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 						</div> -->
        <!-- 					</div> -->
        <!-- 					<div class="forum-item"> -->
        <!-- 						<div class="row"> -->
        <!-- 							<div class="col-md-3"> -->
        <!-- 								<div class="forum-icon"> -->
        <!-- 									<i class="fa fa-bookmark"></i> -->
        <!-- 								</div> -->
        <!-- 								<a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a> -->
        <!-- 								<div class="forum-sub-title"></div> -->
        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>작성자 </small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 	오길동 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>등록일</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 2022-05-03 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>읽음</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>댓글개수</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->

        <!-- 							<div class="col-md-1 forum-info"> -->
        <!--                             <span class="views-number"> -->
        <!--                               <span class="fa-stack"> -->
        <!-- 										<i class="fa fa-square fa-stack-2x"></i> -->
        <!-- 										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i> -->
        <!-- 									</span> -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 						</div> -->
        <!-- 					</div> -->
        <!-- 					<div class="forum-item"> -->
        <!-- 						<div class="row"> -->
        <!-- 							<div class="col-md-3"> -->
        <!-- 								<div class="forum-icon"> -->
        <!-- 									<i class="fa fa-bookmark"></i> -->
        <!-- 								</div> -->
        <!-- 								<a href="forum_post.html" class="forum-item-title">아 게시판 구현 테스트중입니다</a> -->
        <!-- 								<div class="forum-sub-title"></div> -->
        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>작성자 </small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 	로길동 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>등록일</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 2022-05-03 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>읽음</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 							<div class="col-md-2 forum-info"> -->
        <!-- 								<div> -->
        <!-- 									<small>댓글개수</small> -->
        <!-- 								</div> -->
        <!--                             <span class="views-number"> -->
        <!--                                 0 -->
        <!--                             </span> -->

        <!-- 							</div> -->

        <!-- 							<div class="col-md-1 forum-info"> -->
        <!--                             <span class="views-number"> -->
        <!--                               <span class="fa-stack"> -->
        <!-- 										<i class="fa fa-square fa-stack-2x"></i> -->
        <!-- 										<i class="fa fa-pencil fa-stack-1x fa-inverse"></i> -->
        <!-- 									</span> -->
        <!--                             </span> -->

        <!-- 							</div> -->
        <!-- 						</div> -->
        <!-- 					</div> -->
    </div>
</div>
<!--   End Board -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.13/dist/sweetalert2.all.min.js"></script>
<!-- Vendor JS Files -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

<!-- Template Main JS File -->
<script src="/resources/board/posting/js/main.js"></script>

</body>

</html>