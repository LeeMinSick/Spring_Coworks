<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.13/dist/sweetalert2.min.css">

<link href="/resources/administration/board/css/31.css" rel="stylesheet">
<link href="/resources/administration/board/css/main.css"
	rel="stylesheet">

</head>
<body>




	<div id="root">
		<div class="wrap ko_KR region_kr lnb_hide_large ua_win">

			<header class="header">
				<h1 class="corp">
					<a href="#"><i class="blind">라인웍스</i></a>
				</h1>
				<h2 class="svc">
					<a href="#" data-nds="main"><i class="blind">어드민</i></a>
				</h2>
				<div class="login_group">
					<div class="tenant">
						<a href="#" class="link fold">coworks</a>
					</div>
					<div class="svcbox">
						<a href="#" class="link">바로가기</a>
					</div>
					<div class="user_profile">
						<a href="/board/list-posting"><img
							src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"
							width="32" height="32" alt="프로필 사진"></a>
					</div>
				</div>
				<button type="button" class="toggle_lnb">좌측 메뉴 접기/펼치기</button>
			</header>


			<div class="lnb">
				<div class="lnb_cover">

					<div class="menu_box">
						<ul class="menu_list">
							<li class="general"><a href="#" class="item_txt">기본환경</a>
								</li>
							<li class="member"><a href="#" class="item_txt">구성원</a>
								</li>
							<li class="service expand"><a href="#" class="item_txt">서비스</a>
								<ul class="sub_menu">
									<li class="selected"><a href="#" class="sub_item">게시판</a></li>
									<li class=""><a href="#" class="sub_item">메시지</a></li>
									<li class=""><a href="#" class="sub_item">메일</a></li>
									<li class=""><a href="#" class="sub_item">캘린더</a></li>
									<li class=""><a href="#" class="sub_item">주소록</a></li>
									<li class=""><a href="#" class="sub_item">드라이브</a></li>
									<li class=""><a href="#" class="sub_item">설문</a></li>
								</ul></li>
							<li class="security"><a href="#" class="item_txt">보안</a>
								</li>
							<li class="statistics"><a href="#" class="item_txt">통계</a>
								</li>
							<li class="audit"><a href="#" class="item_txt">감사</a>
								</li>
							<li class="monitoring"><a href="#" class="item_txt">모니터링</a>
								</li>
							<li class="pay"><a href="#" class="item_txt">구매</a>
								</li>
							<li class="partners"><a href="#" class="item_txt">파트너</a>
								</li>
						</ul>
					</div>

				</div>
			</div>




			<div class="container" id="body-container">
				<div class="contents service fix_layout">
					<div class="contents_head">
						<ul class="breadcrumbs">
							<li class="item"><a href="/">메인</a></li>
							<li class="item"><a href="#">서비스</a></li>
							<li class="item"><a href="#">게시판</a></li>
						</ul>
						<div class="title_cover">
						
							<h3 class="title">
								<span class="txt">게시판</span> <a href="#"
									class="btn_help_contents"><i class="blind">도움말</i></a>
							</h3>
						</div>
						
						
						
						
					</div>
					<div class="contents_body">
						<div class="sticky_box with_tab">
							<div class="task_area">

								<button type="button" class="lw_btn_point" id="modal-btn">게시판
									추가</button>
							</div>
							<ul class="tab_list" role="tablist">
								<li class=""><a href="#" role="tab">일반</a></li>
								<li class=""><a href="#" role="tab">메인</a></li>
								<li class="selected"><a href="#" role="tab">게시판 관리</a></li>
								<li class=""><a href="#" role="tab">게시글 정리</a></li>
								<li class=""><a href="#" role="tab">게시글 백업</a></li>
							</ul>
							<span class="drag_item"></span>
						</div>
						
						
						
						
						<section class="fix_contents home_board"
							style="user-select: none;">

							<div class="editing_bar" style="display: none;" id="delete-bar">
								<button type="button" class="btn_delete" id="delete-board-btn">삭제</button>
								<button type="button" class="btn" id="delete-cancel-btn">취소</button>
							</div>

						
							<div class="fix_head">
								<div class="list_head">
									<h1>
										<span class="group_name">전체<em class="cnt">${boardDTO.boardCnt}</em></span>
									</h1>
									<div class="task_area">
										<button type="button" class="btn_search">
											<i class="blind"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="fix_body">
								<div class="home_board_list_head">
									<div class="item">
										<div class="check">
											<input type="checkbox" class="lw_checkbox" id="check_all"><label
												for="check_all"><i class="blind">전체</i></label>
										</div>
										<div class="name">게시판명</div>
										<div class="count" >게시글 수</div>
										<div class="auth">권한</div>
										<div class="type">게시판 타입</div>
									</div>
								</div>
								<div class="lw_table_scoll">
									<form action="/administration/delete-all-board" id="delete-board-check" method="post">
										<ul class="home_board_list">
											<c:forEach var="board" items="${boardDTO.list}" varStatus="status">
										
											<li class=""><div class="item">
												<div class="check">
													<span class="btn_drag"><span class="cst_tooltip">드래그로
															이동</span></span><input type="checkbox" class="lw_checkbox"
														id="check${status.index}" name="chk_board" value="${board.board_number }"><label
														for="check${status.index}"><i class="blind">선택</i></label>
												</div>
												<div class="name" title="${board.board_name }" id="detail-board${status.index}">
													<input type="hidden" id="detail-bno-check" value="${board.board_number }">
													<button type="button" class="btn_indent">
														<i class="blind">게시판 들여쓰기</i>
													</button>
													<em class="ico_board">일반 게시판</em>${board.board_name }
												</div>
												<div class="count" style="padding-left: 2%;">${board.postingCnt }</div>
												<div class="auth" style="padding-left: 1%;">공개</div>
												<div class="type" style="padding-left: 2%;">게시판</div>
											</div>
											</li>
											
											</c:forEach>
										</ul>
									</form>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>



		</div>
	</div>

	<div id="modal-root">
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.13/dist/sweetalert2.all.min.js"></script>
	<script type="text/javascript"
		src="/resources/administration/board/js/sv_board.js"></script>
	<script type="text/javascript">
		$(function(){
			var board_count  =  '<c:out value="${fn:length(boardDTO.list) }"/>';
			listBoard(board_count);
		});
	</script>

</body>
</html>