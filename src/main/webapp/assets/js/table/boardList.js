

var BDLS = {
		global:{
			BOARD_NO : "",
			delBoard : ""
		},
		
		delSwal:function(boardno){
			BDLS.global.delBoard = boardno;
			swal({
				  title: "정말 삭제하시겠습니까?",
				  text: "삭제버튼을 누르시면 삭제됩니다.",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				}).then((willDelete) => {
				  if (willDelete) {
				    swal("삭제가 완료되었습니다.", {
				      icon: "success",
				    });
				    setTimeout(function(){
				    	BDLS.delBoard();
				    },1000);
				    
				  } else {
					  return false;
				  }
			});
		},
		
		boardSav:function(txtArea){
			if($("#title").val() == "" || $("#title").val() == null ){
				swal("", "제목을 입력해주세요", "error");
			}
			
			if($("#writer").val() == "" || $("#writer").val() == null ){
				swal("", "작성자를 입력해주세요", "error");
			} 
			
			if($("textarea#ir1").val() == "" || $("textarea#ir1").val() == null ){
				swal("", "내용을 입력해주세요", "error");
			} 
			var textArea = txtArea;
			console.log(textArea);
			
			var data = {
				TITLE : $("#title").val(),
				CONTENT : $("textarea#ir1").val(),
				WRITER : $("#writer").val()
			};
			
			
			$.ajax({
				type:"POST",
				url:"../table/boardRegister",
				dataType:"json",
				data:data,
				success:function(result){
					console.log(result);
					location.href = "../table/boardList";
				}
			});
		},
		
		delBoard:function(){
			
			var data = {
				bno : BDLS.global.delBoard
			};
			
			$.ajax({
				type:"POST",
				url:"../table/delBoard",
				dataType:"json",
				data:data,
				success:function(result){
					console.log(result);
					location.reload();
				}
			});
		},
		
		updBoard:function(){
			
			var data ={
					UPD_BNO:BDLS.global.BOARD_NO,
					UPD_CONTENT:$("textarea#modal_ir1").val()
			};
			console.log(data.UPD_BNO);
			
			$.ajax({
				type:"POST",
				url:"../table/updateBoard",
				dataType:"json",
				data:data,
				success:function(result){
					console.log(result);
					location.reload();
				}
			});
		},
		
		chkSelect:function(){
			
			var arTest = [];
			$("input[name=tblChk]:checked").each(function(){
				arTest.push($(this).val());
			});
			console.log("체크된 값 total : " + arTest);
			
			var data={
				arTst:arTest
			};
			console.log(data.arTst);
			
			$.ajax({
				url:"../table/getChkCol",
				type:"post",
				dataType:"json",
				data:data,
				success:function(result){
					console.log(result);
				}
			});
		},

		boardView:function(bno){
			var url = "../table/boardView";
			url = url+"?bno="+bno;
			location.href = url;
		},
		
		boardModify:function(boardno){
			var data = {
					bno : boardno,
					title : $("#view_title").val(),
					content : $("#view_ir1").val()
			}
			
			$.ajax({
				url:"../table/boardModify",
				type:"post",
				dataType:"json",
				data:data,
				success:function(result){
					location.reload();
				}
			});
		}
}

