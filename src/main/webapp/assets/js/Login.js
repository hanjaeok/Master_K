

var LOGIN = {
		
		loginChck:function(){
			var userId = $("#userId").val()
			var userPw = $("#userPw").val()
			var data = {
				id:userId,
				pw:userPw
			};
			var loginSet = "NO";
			$.ajax({
				type:"POST",
				dataType:"JSON",
				url:"../loginOK",
				data:data,
				success:function(result){
					console.log(result);
					if(result.US_INFO == null){
						swal("", "아이디가 없습니다.", "error");
						
						return false;
					}
					if(result.US_INFO.password != userPw){
						swal("", "비밀번호를 확인해주세요.", "error");
						
						return false;
					}
					
					//LOGIN.loginSuccess(loginSet);
					location.href="../home";
				}
			});
		},
		
		logOut:function(){
			
			location.href="../";
		},
		/*loginSuccess:function(loginStatus){
			
			var data = {
				loginSet:loginStatus
			};
			
			$.ajax({
				type:"GET",
				dataType:"json",
				url:"../",
				data:data,
				success:function(){
					
				}
			});
		}*/
}