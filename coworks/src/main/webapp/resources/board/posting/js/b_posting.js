$(function(){//검색창 상세
	$('#detail').click(function(){
		$('#detailForm').toggle();
});
});


$(function(){//답글
	$('#reply').click(function(){
		$('#replyForm').toggle();
	});
	
});

$(function(){
	$('#allSelect').click(function(){
		var checked = $(this).is(':checked');
		
		if(checked){
			$('input:checkbox').prop('checked', true);
		}else{
			$('input:checkbox').prop('checked', false);
		}
	});
});


$(function(){
	$('#deleteButton').click(function(){
		$('#deleteCheck').submit();
		
		
	});
});


//delete function
function goDelete(pno){
	var f = document.paging;
		
		f.pno.value = pno;
		
		f.action = "/board/delete-posting"

	    f.method = "post"
	    f.submit();
};

