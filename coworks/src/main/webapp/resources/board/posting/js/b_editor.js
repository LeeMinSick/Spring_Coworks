let oEditors = []
  
  $(function(){
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "editorTxt", //textarea에서 지정한 id와 일치해야 합니다. 
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "/resources/board/posting/smarteditor2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){
                   
              }
          }, 
          fOnAppLoad : function(){
              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
//               oEditors.getById["editorTxt"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
          },
          fCreator: "createSEditor2"
      });
      
      //저장버튼 클릭시 form 전송 등록
      $("#save").click(function(){
        oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);

        Swal.fire({
			icon: 'success',
			title: '게시글이 등록되었습니다.',
			confirmButtonText: '확인'
			
		  }).then((confirm) => {
            if (confirm.isConfirmed) {
                $("#frm").submit();
            }
        });
      });





      //저장버튼 클릭시 form 전송 수정
      $("#update-posting-btn").click(function(){
          oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);
          
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
				  title: '게시글이 수정되었습니다',
				  confirmButtonText: '확인',
				  icon: 'success'
				}).then((confirm) => {
					if (confirm.isConfirmed) {
						$("#update-posting").submit();
					}
				})
			}
		})
      });    
});


$(function(){
  $('#board-select li > a').on('click', function() {
    // 버튼에 선택된 항목 텍스트 넣기 


    $('#board-dropdown').html($(this).text());
    var bno = $(this).parent().val();
    console.log(bno + "dddddddddd");
    $('#board-no').val(bno);
  });
});