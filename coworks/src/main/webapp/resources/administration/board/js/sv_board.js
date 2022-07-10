//모달창생성
$(function(){
       var html = '<div class="ly_wrap dimmed ko_KR ua_win"><div class="ly_common ly_fadein ly_page ly_add_board"><h3 class="tit">게시판 추가</h3><div class="btn_box"><button type="button" class="lw_btn" id="modal-close">취소</button><button type="button" class="lw_btn_point" id="insert-board-btn">추가</button></div><div class="scroller"><div class="lw_table tb_board_info"><form method="post" action="/administration/board" id="board-form"><div class="lw_tr has_input"><div class="lw_th">게시판명</div><div class="lw_td"><div class="input_box has_cnt"><label for="input_title" class="blind">게시판명</label><input type="text" class="lw_input" id="input_title" name="board_name" placeholder="게시판명을 입력해 주세요. " maxlength="60" value=""><span class="cnt"><em>0</em>/60</span></div></div></div><div class="lw_tr has_input"><div class="lw_th">게시판 설명</div><div class="lw_td"><div class="textarea_wrap has_cnt "><label for="inp02" class="blind">게시판 설명</label><textarea name="board_description" cols="30" rows="10" placeholder="설명을 입력해 주세요." maxlength="300"></textarea><span class="cnt"><em>0</em>/300</span></div></div></div><div class="lw_tr has_line"><div class="lw_th">타입</div><div class="lw_td"><div class="slt_group"><span class="radio_cover type_list"><input type="radio" class="lw_radio" id="boardListType_LIST" name="boardListType" value="LIST" checked=""><label for="boardListType_LIST">게시판</label></span><span class="radio_cover type_preview"><input type="radio" class="lw_radio" id="boardListType_PREVIEW" name="boardListType" value="PREVIEW"><label for="boardListType_PREVIEW">미리보기</label></span><span class="radio_cover type_album"><input type="radio" class="lw_radio" id="boardListType_ALBUM" name="boardListType" value="ALBUM"><label for="boardListType_ALBUM">앨범</label></span></div></div></div><div class="lw_tr has_line has_input"><div class="lw_th">템플릿 </div><div class="lw_td"><div class="template_cover"><button type="button" class="btn_template">템플릿 선택</button><span class="template_name">사용 안 함&nbsp;</span></div><p class="noti">※ 템플릿 원본이&nbsp;수정/삭제되면 게시판에 설정한 템플릿도 같이 변경됩니다.&nbsp;</p></div></div><div class="lw_tr has_input has_line"><div class="lw_th">게시판 관리자</div><div class="lw_td"><div class="srch_member"><div class="task"><input type="text" placeholder="이름 또는 이메일 검색"></div><ul class="member_list results"><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">고길동</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">go@coworks.co.kr</span></div></div></li><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">영희</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">yong@coworks.co.kr</span></div></div></li><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">홍길동</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">hong@coworks.co.kr</span></div></div></li><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">철수</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">iron@coworks.co.kr</span></div></div></li></ul></div><p class="noti">※ "게시판 관리자"는 해당 게시판의 권한부여 및 등록된 게시글과 댓글을 관리할 수 있습니다.</p></div></div><div class="lw_tr has_line"><div class="lw_th">권한</div><div class="lw_td"><span class="radio_cover m_block"><input type="radio" class="lw_radio" id="is_public_board_true" name="is_public_board" value="true" checked=""><label for="is_public_board_true">공개 게시판</label></span><span class="radio_cover m_block"><input type="radio" class="lw_radio" id="is_public_board_false" name="is_public_board" value="false"><label for="is_public_board_false">멤버 게시판<span> (지정된 구성원만 사용 가능)</span></label></span><p class="desc">공개 게시판에서는 모든 구성원이 글을 쓰고 읽을 수 있습니다. <br>단, 예외 관리를 통해 소수의 구성원, 고용 형태, 또는 조직(하위 조직 포함)에게 비공개할 수 있습니다.</p><strong class="sub_tit">공개 게시판 예외 관리 목록</strong><div class="sub_tab"><ul class="tab_list" role="tablist"><li class="selected"><a href="#" role="tab">멤버</a></li><li class=""><a href="#" role="tab">고용형태</a></li><li class=""><a href="#" role="tab">조직</a></li></ul><button type="button" class="btn">멤버 추가</button></div><div class="srch_member"><ul class="member_list results"><li class="empty"><p>예외 관리 중인 멤버가 없습니다.</p></li></ul></div></div></div></div></div></form><button type="button" class="btn_close" id="modal-close">닫기</button></div></div>';
    $('#body-container').on("click", "#modal-btn", function(){
        $('#modal-root').append(html);
    });
});

//모달창제거
$(function(){
    $('#modal-root').on("click", "#modal-close", function(){
        $('#modal-root *').remove();
    });
});


$(function(){
//administration-board에서 체크박스 전체 클릭했을때 이벤트
$(".home_board_list_head").on("click", "#check_all", function(){
		const checked = $(this).is(':checked');
		
		if(checked){
			$('input[name=chk_board]').prop('checked', true);
            if($('#delete-bar').css("display") == "none"){
                $('#delete-bar').css("display", "block");
            }
		}else{
			$('input[name=chk_board]').prop('checked', false);
            if($('#delete-bar').css("display") == "block"){
                $('#delete-bar').css("display", "none");
            }
		}
	});
});

//게시판 추가버튼 클릭시 form 전송 등록
$(function(){
    $("#modal-root").on("click", "#insert-board-btn", function(){
        Swal.fire({
            icon: 'success',
            title: '게시글이 등록되었습니다.',
            confirmButtonText: '확인'
            
        }).then((confirm) => {
            if (confirm.isConfirmed) {
                $("#board-form").submit();
            }
        });
    });
});

//게시판 삭제 버튼 클릭
$(function(){
    //$("#modal-root").on("click", "#delete-board-btn", function(){
    $("#delete-board-btn").click(function(){
        var checked = $('input:checkbox[name=chk_board]:checked').length;
        if(checked > 0){
            Swal.fire({
                title: '정말로 삭제하시겠습니까?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: '삭제',
                cancelButtonText : '취소',
                reverseButtons: true
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire({

                        title: '게시판이 삭제되었습니다',
                        confirmButtonText: '확인',
                        icon: 'success'
                    }).then((confirm) => {
                        if (confirm.isConfirmed) {
                            $('#delete-board-check').submit();
                        }
                    })
                }
            })

        }

    });
});
//게시판 체크박스 취소
$(function(){
    $('#delete-cancel-btn').click(function(){
        const checked = $("input[name=chk_board]:checked").length;

        if(checked > 0){
            $('input[name=chk_board]').prop('checked', false);
            $("#check_all").prop("checked", false);
            $('#delete-bar').css("display", "none");
        }
        
    });
});




//administration-board에서 전체체크 클릭 돼 있을때 다른 체크박스 체크를 풀면 전체체크 풀리는 이벤트
function listBoard(cnt){
    for(var i = 0; i < cnt; i++){

        $(".home_board_list").on("click", "#check" +i, function(){
            const total = $("input[name=chk_board]").length;
            const checked = $("input[name=chk_board]:checked").length;
        
            if(total != checked) {
                $("#check_all").prop("checked", false);
            }else{
                $("#check_all").prop("checked", true); 
            } 
        
            if(checked > 0 && $('#delete-bar').css("display") == "none"){
                $('#delete-bar').css("display", "block");
            }else if(checked <= 0 && $('#delete-bar').css("display") == "block"){
                $('#delete-bar').css("display", "none");
            }
    
        });

        //게시판 상세사항
        
        $(".home_board_list").on("click", "#detail-board" +i, function(){
            var board_number = $(this).find('#detail-bno-check').val();
            detailBoard(board_number);

            
        });
    }
}

//게시판 상세
function detailBoard(bno){
	$.ajax({
		type : 'get',            
		url : '/administration/board/' + bno,      
		contentType : "application/json; charset=utf-8",            
		success : function(data){ 
			var html = '<div class="ly_wrap dimmed ko_KR ua_win"><div class="ly_common ly_fadein ly_page ly_add_board"><h3 class="tit">게시판 추가</h3><div class="btn_box"><button type="button" class="lw_btn" id="modal-close">취소</button><button type="button" class="lw_btn_point" id="update-board-btn">저장</button></div><div class="scroller"><div class="lw_table tb_board_info"><form method="post" action="/administration/update-board" id="board-update-form"><input type="hidden" name="board_number" value="'+data.board_number+'"><div class="lw_tr has_input"><div class="lw_th">게시판명</div><div class="lw_td"><div class="input_box has_cnt"><label for="input_title" class="blind">게시판명</label><input type="text" class="lw_input" id="input_title" name="board_name" placeholder="게시판명을 입력해 주세요. " maxlength="60" value="'+data.board_name+'"><span class="cnt"><em>0</em>/60</span></div></div></div><div class="lw_tr has_input"><div class="lw_th">게시판 설명</div><div class="lw_td"><div class="textarea_wrap has_cnt "><label for="inp02" class="blind">게시판 설명</label><textarea name="board_description" cols="30" rows="10" placeholder="설명을 입력해 주세요." maxlength="300">'+data.board_description+'</textarea><span class="cnt"><em>0</em>/300</span></div></div></div><div class="lw_tr has_line"><div class="lw_th">타입</div><div class="lw_td"><div class="slt_group"><span class="radio_cover type_list"><input type="radio" class="lw_radio" id="boardListType_LIST" name="boardListType" value="LIST" checked=""><label for="boardListType_LIST">게시판</label></span><span class="radio_cover type_preview"><input type="radio" class="lw_radio" id="boardListType_PREVIEW" name="boardListType" value="PREVIEW"><label for="boardListType_PREVIEW">미리보기</label></span><span class="radio_cover type_album"><input type="radio" class="lw_radio" id="boardListType_ALBUM" name="boardListType" value="ALBUM"><label for="boardListType_ALBUM">앨범</label></span></div></div></div><div class="lw_tr has_line has_input"><div class="lw_th">템플릿 </div><div class="lw_td"><div class="template_cover"><button type="button" class="btn_template">템플릿 선택</button><span class="template_name">사용 안 함&nbsp;</span></div><p class="noti">※ 템플릿 원본이&nbsp;수정/삭제되면 게시판에 설정한 템플릿도 같이 변경됩니다.&nbsp;</p></div></div><div class="lw_tr has_input has_line"><div class="lw_th">게시판 관리자</div><div class="lw_td"><div class="srch_member"><div class="task"><input type="text" placeholder="이름 또는 이메일 검색"></div><ul class="member_list results"><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">고길동</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">go@coworks.co.kr</span></div></div></li><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">영희</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">yong@coworks.co.kr</span></div></div></li><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">홍길동</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">hong@coworks.co.kr</span></div></div></li><li class="has_thmb"><div class="thumb"><span class="thmb_area"><img src="https://static.worksmobile.net/static/pwe/wm/common/img_profile2.png"></span></div><div class="infor"><div class="name_box"><strong class="name">철수</strong><span lang="en" class="lang"></span><span class="nick"></span></div><div class="txt"><strong class="position">관리직</strong><span class="corp">coworks</span><span class="email">iron@coworks.co.kr</span></div></div></li></ul></div><p class="noti">※ "게시판 관리자"는 해당 게시판의 권한부여 및 등록된 게시글과 댓글을 관리할 수 있습니다.</p></div></div><div class="lw_tr has_line"><div class="lw_th">권한</div><div class="lw_td"><span class="radio_cover m_block"><input type="radio" class="lw_radio" id="is_public_board_true" name="is_public_board" value="true" checked=""><label for="is_public_board_true">공개 게시판</label></span><span class="radio_cover m_block"><input type="radio" class="lw_radio" id="is_public_board_false" name="is_public_board" value="false"><label for="is_public_board_false">멤버 게시판<span> (지정된 구성원만 사용 가능)</span></label></span><p class="desc">공개 게시판에서는 모든 구성원이 글을 쓰고 읽을 수 있습니다. <br>단, 예외 관리를 통해 소수의 구성원, 고용 형태, 또는 조직(하위 조직 포함)에게 비공개할 수 있습니다.</p><strong class="sub_tit">공개 게시판 예외 관리 목록</strong><div class="sub_tab"><ul class="tab_list" role="tablist"><li class="selected"><a href="#" role="tab">멤버</a></li><li class=""><a href="#" role="tab">고용형태</a></li><li class=""><a href="#" role="tab">조직</a></li></ul><button type="button" class="btn">멤버 추가</button></div><div class="srch_member"><ul class="member_list results"><li class="empty"><p>예외 관리 중인 멤버가 없습니다.</p></li></ul></div></div></div></div></div></form><button type="button" class="btn_close" id="modal-close">닫기</button></div></div>';
            $('#modal-root').append(html);

            $(function(){//업데이트버튼 클릭시
                $('#modal-root').on("click", "#update-board-btn", function(){
                       

                                Swal.fire({
                                    title: '정말로 수정하시겠습니까?',
                                    icon: 'warning',
                                    showCancelButton: true,
                                    confirmButtonColor: '#3085d6',
                                    cancelButtonColor: '#d33',
                                    confirmButtonText: '수정',
                                    cancelButtonText : '취소',
                                    reverseButtons: true
                                  }).then((result) => {
                                    if (result.isConfirmed) {
                                      Swal.fire({
                        
                                          title: '게시판이 수정되었습니다',
                                          confirmButtonText: '확인',
                                          icon: 'success'
                                        }).then((confirm) => {
                                            if (confirm.isConfirmed) {
                                                $("#board-update-form").submit();
                                            }
                                        })
                                    }
                                })
                });
            });
        }
	});
}





