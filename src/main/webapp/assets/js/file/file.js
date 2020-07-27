/**
 * 
 */

var FIUD = {
	global : {

	},

	fileUpload : function() {

		$('#myModal').modal('show');

	},

	fileDownload : function(file) {

		location.href = "http://localhost:8080/file/fileDown?fname="
				+ encodeURI(file);

	},

	multiFileDown : function() {
		var data = {
				
		};
		
		
		//체크 된 파일 네임 저장
		data.chkFname = [];
		
		$("input[name=fileChck]:checked").each(function() {
			data.chkFname.push($(this).val());
		});
		console.log("체크된 값 total : " + data.chkFname.length);

		
	},
}