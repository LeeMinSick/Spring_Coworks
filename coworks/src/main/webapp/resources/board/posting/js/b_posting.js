$(function(){//검색창 상세
	$('#detail').click(function(){
		$('#detailForm').toggle();
});
});

$(function(){
//listPosting에서 전체체크 클릭 돼 있을때 다른 체크박스 체크를 풀면 전체체크 풀리는 이벤트
$("input[name=chk_posting]").change(function() {
	var total = $("input[name=chk_posting]").length;
	var checked = $("input[name=chk_posting]:checked").length;

	if(total != checked) $("#allSelect").prop("checked", false);
	else $("#allSelect").prop("checked", true); 
});

//listPosting에서 체크박스 전체 클릭했을때 이벤트
	$('#allSelect').change(function(){
		var checked = $(this).is(':checked');
		
		if(checked){
			$('input:checkbox').prop('checked', true);
		}else{
			$('input:checkbox').prop('checked', false);
		}
	});
});


//listPosting에서 삭제 버튼 눌렀을때 이벤트
$(function(){
	$('#deleteButton').click(function(){
		var checked = $('input:checkbox[name=chk_posting]:checked').length;
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

				  title: '게시글이 삭제되었습니다',
				  confirmButtonText: '확인',
				  icon: 'success'
				}).then((confirm) => {
					if (confirm.isConfirmed) {
						$('#deleteCheck').submit();
					}
				})
			}
		})

	}else{
		Swal.fire({
			icon: 'error',
			title: '삭제할 게시글을 선택해주세요.',
			confirmButtonText: '확인'
			
		  });
	}
	
	
	});
});


//노출할 게시글 수 정했을때 페이지 이동 이벤트
$(function(){
	const options = document.querySelectorAll('#drop');
	const menu = document.querySelector('#dropdownMenu2');
	
	
	options.forEach(function(item){
		item.addEventListener('click', function(e){
			const text = e.currentTarget.textContent.trim();
			const value = e.currentTarget.value;
			
			 menu.textContent = text;
			 menu.value = value;
			 
			var page = $('input[name=pageNum]').val();
			 
			 location.href = '/board/list-posting?pageNum='+ page + '&amount=' + menu.value;
		});
	});
});

//노출할 게시글 수 버튼 텍스트 바꾸기 이벤트
$(function(){
	const options = document.querySelectorAll('#drop');
	const menu = document.querySelector('#dropdownMenu2');
	var amount = $('input[name=amount]').val();
	
	if(amount > 10){
		var menuText =  amount + '개씩 보기'; 
		menu.textContent = menuText;
	}
	
	console.log(amount);
});

//검색클릭이벤트
$(function(){
	var searchForm = $("#searchForm");
	
	$("#searchForm #search").on( "click", function(e) {

		if (!searchForm.find("input[name='keyword']").val()) {
			Swal.fire({
				icon: 'error',
				title: '키워드를 입력하세요.',
				confirmButtonText: '확인'
				
			  });
			return false;
			}

		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();

		searchForm.submit();

	});
});




//detailPosting에서 게시글 삭제함수
function goDelete(pno){
	var f = $('#delete-posting-form');

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

				  title: '게시글이 삭제되었습니다',
				  confirmButtonText: '확인',
				  icon: 'success'
				}).then((confirm) => {
					if (confirm.isConfirmed) {
						f.submit();
					}
				})
			}
		})
};




