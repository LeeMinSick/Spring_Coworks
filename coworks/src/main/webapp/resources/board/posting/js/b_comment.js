


//댓글추가 함수
function insertComment(pno, contents){
       
        var comment = {
                posting_number : pno,
                comment_contents : contents
        }

		Swal.fire({
			icon: 'success',
			title: '댓글이 등록되었습니다.',
			confirmButtonText: '확인'
			
		  }).then((confirm) => {
            if (confirm.isConfirmed) {
                $.ajax({
					type : 'POST',            
					url : '/comment/new',      
					data : JSON.stringify(comment),
					contentType : "application/json; charset=utf-8",            
					success : function(result){ 
						if(result === "success"){
							$('#comment_contents').val('');
							location.href="/board/posting?pno=" + pno;
						}
					}
				});
            }
        });
    
}

//댓글리스트 출력 함수
function listComment(pno){

	$('#replybox *').remove();
	
	$.getJSON("/comment/pages/" + pno + ".json",
		function(data){
			var count = data.commentCnt;
			var list = data.list;
			
			
			var html = [];
			
			if(count >= 0){
			
				$('#comment-count').text(count);
			}


			$.each(list, function(i, item){
                html += '<div class="d-flex">';
                html += '<div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>';
                html += '<div class="ms-3">';
                html += '<div class="fw-bold"><span id="pre-comment_name">'+ item.comment_name +' </span></div>';
                html += '<p id="pre-comment-contents'+ i +'">'+ item.comment_contents +'</p>';
                html += '</div>';
                html += ' <div id="buttonList" class="ms-3">';
                html += '<button id="update-btn'+ i +'" type="button" class="btn btn-outline-success" style="border: 0; outline: 0; position: absolute; right: 10%;">수정</button>';
				html += '<button id="delete-btn'+ i +'" type="button" class="btn btn-outline-success" style="border: 0; outline: 0; position: absolute; right: 5%;">삭제</button>';
				html += '</div>';
				html += '</div>';



				html += '<div class="row" style="display: none;" id="update-comment-form'+ i +'">';
				html += '<div class="col-sm-10 forum-item">';
				html += '<form class="mb-4">';
				html += '<textarea class="form-control" rows="3"  id="update-comment-contents'+ i +'"';
				html += 'placeholder="수정할 내용을 입력해주세요." style="height: 200px;"></textarea>';
				html += '</form>';
				html += '</div>';
				html += '<div class="col-sm-2" style="margin-top: 6%;">';
				html += '<button id="input-update-comment'+ i +'" type="button" class="btn btn-lg btn-outline-success" >입력</button>';
				html += '</div>';
				html += '</div>';




				html += '<div style="margin-bottom: 5%;">';
				html += '<button id="reply'+ i +'" type="button" class="btn btn-outline-success" style="margin-top: 1%; margin-left: 5%;">답글</button>';
				html += '</div>';
				html += '<div class="row" style="margin-left: 2%; display: none; " id="comment-form' + i +'">';
				html += '<div class="col-sm-8 forum-item" >';
				html += '<form class="mb-4">';
				html += '<textarea class="form-control"';
				html += 'placeholder="댓글을 입력하세요. (@로 멤버를 멘션할 수 있어요!)" style="height: 200px; width: 900px;"></textarea>';
				html += '<span style="margin-left: 73%;">';
				html += '<button type="button" class="btn btn-lg btn-outline-success">취소</button>';
				html += '<button type="button" class="btn btn-lg btn-outline-success">입력</button>';
				html += '</span>';
				html += '</form>';
				html += '</div>';
				html += '</div>';


				//답글클릭
				$('#replybox').on("click","#reply" + i,function(){ 
					$('#comment-form' + i).toggle();
				});

				//댓글삭제
				$('#replybox').on("click", "#delete-btn"+ i, function(){

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
			
							  title: '댓글이 삭제되었습니다',
							  confirmButtonText: '확인',
							  icon: 'success'
							}).then((confirm) => {
								if (confirm.isConfirmed) {
									deleteComment(item.comment_number, item.posting_number);
								}
							})
						}
					})



					
				});

				//댓글수정폼
				$('#replybox').on("click", "#update-btn"+ i, function(){
					
					if($('#update-comment-form'+i).css("display") == "none"){
						$('#update-comment-form'+i).show();
						$('#update-btn'+i).html('수정취소');
						$('#pre-comment-contents'+i).text('');
						$('#update-comment-contents'+i).val(item.comment_contents);
					}else{
						$('#update-comment-form'+i).hide();
						$('#update-btn'+i).html('수정');
						$('#pre-comment-contents'+i).text(item.comment_contents);
						$('#update-comment-contents'+i).val('');
					}

				});

				//댓글수정
				$('#replybox').on("click", "#input-update-comment"+ i, function(){

					var contents = $('#update-comment-contents'+i).val();

					var comment = {
						comment_number : item.comment_number,
						comment_contents : contents,
						posting_number : item.posting_number
					}

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
			
							  title: '댓글이 수정되었습니다',
							  confirmButtonText: '확인',
							  icon: 'success'
							}).then((confirm) => {
								if (confirm.isConfirmed) {
									updateComment(comment);
								}
							})
						}
					})
					
				});
			
				
			});

			$('#replybox').append(html);


			
			});
		
		}
//댓글삭제함수
function deleteComment(cno, pno){
	$.ajax({
		type : 'DELETE',            
		url : '/comment/'+ cno,      
		success : function(result){ 
			if(result === "success"){
				location.href="/board/posting?pno=" + pno;
			}
		}

	});
}
//댓글수정함수
function updateComment(comment){
	$.ajax({
		type : 'PUT',            
		url : '/comment/' + comment.comment_number,      
		data : JSON.stringify(comment),
		contentType : "application/json; charset=utf-8",            
		success : function(result){ 
			if(result === "success"){
				location.href="/board/posting?pno=" + comment.posting_number;
			}
		}
	});
}
