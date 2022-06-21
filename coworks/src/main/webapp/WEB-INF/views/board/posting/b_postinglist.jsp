<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Board</title>
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="author" content="colorlib.com">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.min.css">
<!-- Template Main CSS File -->
<link href="/resources/board/posting/css/style.css" rel="stylesheet">
<link href="/resources/board/posting/css/board.css" rel="stylesheet">


<link href="https://fonts.googleapis.com/css?family=Lato:400,600,700"
	rel="stylesheet" />
<link href="/resources/board/posting/css/main2.css" rel="stylesheet" />

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

			<h1 class="logo me-auto">
				<a href="/board/main">Coworks</a>
			</h1>
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

					<li><a href="#">Contact</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

			<div class="nav-item dropdown pe-3" id="profile">

				<div class="user_profile">
				
						<a href="/administration/list-board"><img
							src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"
							width="32" height="32" alt="프로필 사진"></a>
					</div>
				<!-- End Profile Iamge Icon -->

				<ul
					class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
					<li class="dropdown-header">
						<h6>Kevin Anderson</h6> <span>Web Designer</span>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="users-profile.html"> <i class="bi bi-person"></i> <span>My
								Profile</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="users-profile.html"> <i class="bi bi-gear"></i> <span>Account
								Settings</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>Need
								Help?</span>
					</a></li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="#"> <i class="bi bi-box-arrow-right"></i> <span>Sign
								Out</span>
					</a></li>

				</ul>
				<!-- End Profile Dropdown Items -->
			</div>
		</div>



	</header>
	<!-- End Header -->

	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item">
				<div class="d-grid gap-2" style="margin-top: 7%">
					<button class="btn btn-lg btn-primary" type="button" id="button"
						onClick="location.href='/board/register-posting-form'">글쓰기</button>
				</div>
			</li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-menu-button-wide"></i><span id="font">필독</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="#"> <i class="bi bi-circle"></i><span>필독1</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>필독2</span>
					</a></li>
				</ul></li>
			<!-- End Components Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span id="font">즐겨찾기</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="#"> <i class="bi bi-circle"></i><span>즐겨찾기1</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>즐겨찾기2</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>즐겨찾기3</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>즐겨찾기4</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>즐겨찾기5</span>
					</a></li>
				</ul></li>
			<!--  End Forms Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-layout-text-window-reverse"></i><span id="font">게시판</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
			
			<ul id="tables-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="/board/list-posting"> <i class="bi bi-circle"></i><span>전체</span>
					</a></li>
			</ul>
			
			<c:forEach var="board" items="${boardDTO.list}" varStatus="status">
				<ul id="tables-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="/board/list-posting?bno=${board.board_number }"> <i class="bi bi-circle"></i><span>${board.board_name}</span>
					</a></li>
				</ul>
			</c:forEach>
			
			</li>
			<!--  End Tables Nav -->
		</ul>
	</aside>
	<!-- End Sidebar-->


	<div class="s009" style="margin-left: 4%;">
		<form action="/board/list-posting" id="searchForm">
			<div class="inner-form">

				<div class="input-group"
					style="margin-top: 4%; background-color: #eee;">
					<input type="text" name="keyword" class="form-control"
						placeholder="게시글 검색"
						style="padding: 20px; font-size: 25px; font-weight: bold; border-color: #eee; background-color: #eee;">
					<button class="btn btn-success" type="submit" id="search"
						style="font-size: 25px; font-weight: bold; background-color: #eee; color: #6d757f; border-color: #eee;">검색</button>
					<button id="detail" class="btn btn-success" type="button"
						style="font-size: 25px; font-weight: bold; background-color: #eee; color: #6d757f; border-color: #eee;">상세</button>
				</div>

				<div class="advance-search" id="detailForm" style="display: none;">
					<span class="desc">게시글 검색</span>
					<div class="row">
						<div class="input-field">
							<div class="input-select">
								<select data-trigger="" name="bno">
									<option placeholder="" value="-1">전체 게시판</option>
									<c:forEach var="board" items="${boardDTO.list}" varStatus="status">
										<option value="${board.board_number }" 
											<c:out value="${pageMaker.cri.bno eq board.board_number?'selected':''}"/>>${board.board_name}</option>
									</c:forEach>
									
								</select>
							</div>
						</div>
						<div class="input-field">
							<div class="input-select">
								<select data-trigger="" name="type">
									<option placeholder="" value="TC"
										<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목+본문</option>
									<option value="T" 
										<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
									<option value="C"
										<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>본문</option>
								</select>
							</div>
						</div>
						<div class="input-field">
							<div class="input-select">
								<select data-trigger="" name="regtype">
									<option placeholder="" value="A" <c:out value="${pageMaker.cri.regtype eq 'A'?'selected':''}"/>>기간전체</option>
									<option value="W" <c:out value="${pageMaker.cri.regtype eq 'W'?'selected':''}"/>>1주</option>
									<option value="M" <c:out value="${pageMaker.cri.regtype eq 'M'?'selected':''}"/>>1개월</option>
									<option value="T" <c:out value="${pageMaker.cri.regtype eq 'T'?'selected':''}"/>>3개월</option>
									<option value="S" <c:out value="${pageMaker.cri.regtype eq 'S'?'selected':''}"/>>6개월</option>
								</select> 
				
					

							</div>
						</div>
					</div>
					<div class="row third">
						<div class="input-field">
							<div class="result-count"></div>
							<div class="group-btn">
								<button class="btn-delete" id="delete">초기화</button>
								<button class="btn-search" id="search" type="submit">검색</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<input type='hidden' name='pageNum'
						value='<c:out value="${pageMaker.cri.pageNum}"/>'> 
			<input type='hidden' name='amount'
				value='<c:out value="${pageMaker.cri.amount}"/>'>
		</form>
	</div>




	<div class="row">
		<div class="ibox-content forum-container">

			<div class="cont_head edit_type"
				style="position: relative; display: block;">
				<div>
					<h1 class="tit" style="font-weight: bold;">
						<c:choose>
        					<c:when test="${boardVO.board_number > 0}">
            					${boardVO.board_name}
        					</c:when>         
       					 	<c:otherwise>
          					 	전체
         					</c:otherwise>
    					</c:choose>
					
					</h1>
				</div>
				<div class="btn_box " style="display: inline; margin-right: 1%;">
					<div class="chk_board"
						style="display: inline-block; margin-top: 1%; padding-top: 3%;">
						<input id="allSelect" type="checkbox" name="chk_all"> <label
							for="allSelect" style="font-weight: bold; font-size: 22px;">전체선택</label>
					</div>

					<div class="btn-toolbar" role="toolbar"
						aria-label="Toolbar with button groups"
						style="display: inline-block; margin-left: 1%;">
						<div class="btn-group me-2" role="group" aria-label="First group">
							<button id="deleteButton" type="button"
								class="btn btn-lg btn-outline-success">삭제</button>
							<button type="button" class="btn btn-lg btn-outline-success">이동</button>
							<button type="button" class="btn btn-lg btn-outline-success">즐겨찾기</button>
						</div>
					</div>

				</div>
				<div class="row" style="display: inline-block; margin-left: 50%;">


					<div class="dropdown">
						<button class="btn btn-lg btn-outline-success dropdown-toggle"
							type="button" id="dropdownMenu2" data-bs-toggle="dropdown"
							aria-expanded="false">10개씩 보기</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
							<li><button id="drop" class="dropdown-item" type="button"
									value="10">10개씩 보기</button></li>
							<li><button id="drop" class="dropdown-item" type="button"
									value="20">20개씩 보기</button></li>
							<li><button id="drop" class="dropdown-item" type="button"
									value="30">30개씩 보기</button></li>
							<li><button id="drop" class="dropdown-item" type="button"
									value="40">40개씩 보기</button></li>
							<li><button id="drop" class="dropdown-item" type="button"
									value="50">50개씩 보기</button></li>
						</ul>
					</div>


				</div>
			</div>


			<form action="/board/delete-all-list" id="deleteCheck" method="post">
				<c:forEach var="posting" items="${list }">

					<div class="forum-item">
						<div class="row">
							<div class="col-md-3">
								<div class="forum-icon">
									<input type="checkbox" id="check"
										value="${posting.posting_number }" name="chk_posting">
								</div>
								<a href="posting?pno=${posting.posting_number}"
									class="forum-item-title">${posting.posting_title }</a>
								<div class="forum-sub-title"></div>
							</div>
							<div class="col-md-2 forum-info">
								<div>
									<small>작성자</small>
								</div>
								<span class="views-number"> ${posting.posting_writer} </span>

							</div>
							<div class="col-md-2 forum-info">
								<div>
									<small>등록일</small>
								</div>
								<span class="views-number"> <fmt:parseDate var="dt"
										value="${posting.posting_date_of_registration}"
										pattern="yyyy-MM-dd HH:mm:ss"></fmt:parseDate> <fmt:formatDate
										value="${dt }" pattern="yyyy/MM/dd" />
								</span>

							</div>
							<div class="col-md-2 forum-info">
								<div>
									<small>읽음</small>
								</div>
								<span class="views-number"> ${posting.posting_hitpoint }
								</span>

							</div>
							<div class="col-md-2 forum-info">
								<div>
									<small>댓글개수</small>
								</div>
								<span class="views-number"> 0 </span>

							</div>

							<div class="col-md-1 forum-info">
								<span class="views-number"> <span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i> <i
										class="fa fa-pencil fa-stack-1x fa-inverse"></i>
								</span>
								</span>

							</div>
						</div>
					</div>

				</c:forEach>
			</form>

			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-start">
					<c:if test="${pageMaker.prev}">
						<li class="page-item"><a class="page-link"
							href="${pageMaker.startPage -1}">Previous</a></li>
					</c:if>


					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="page-item  ${pageMaker.cri.pageNum == num ? "active":""} ">
							<a class="page-link" href="${num}">${num}</a>
						</li>
					</c:forEach>



					<c:if test="${pageMaker.next}">
						<li class="page-item"><a class="page-link"
							href="${pageMaker.endPage +1 }">Next</a></li>
					</c:if>
				</ul>
			</nav>


			<form id='actionForm' action="/board/list-posting" method='get'>
				<input type='hidden' name='pageNum'
					value='<c:out value="${pageMaker.cri.pageNum}"/>'> 
				<input
					type='hidden' name='amount'
					value='<c:out value="${pageMaker.cri.amount}"/>'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'>
				<input type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
				<input type='hidden' name='regtype'
					value='<c:out value="${ pageMaker.cri.regtype }"/>'>
				
			</form>




		</div>

		<!--   End Board -->





		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script type="text/javascript"
			src="/com/coworks/board/posting/view/js/b_posting.js"></script>
		<!-- Vendor JS Files -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.min.js"></script>

		<!-- Template Main JS File -->
		
		<script src="/resources/board/posting/js/main.js"></script>
		<script type="text/javascript"
			src="/resources/board/posting/js/b_posting.js"></script>

		<script src="/resources/board/posting/js/extention/choices.js"></script>
		<script>
			const customSelects = document.querySelectorAll("select");
			const deleteBtn = document.getElementById('delete')
			const choices = new Choices('select', {
				searchEnabled : false,
				itemSelectText : '',
				removeItemButton : true,
			});
			deleteBtn.addEventListener("click", function(e) {
				e.preventDefault()
				const deleteAll = document.querySelectorAll('.choices__button')
				for (let i = 0; i < deleteAll.length; i++) {
					deleteAll[i].click();
				}
			});

			var actionForm = $("#actionForm");

			$(".page-item a").on(
					"click",
					function(e) {

						e.preventDefault();

						actionForm.find("input[name='pageNum']").val(
								$(this).attr("href"));
						actionForm.submit();
					});
		</script>
</body>

</html>