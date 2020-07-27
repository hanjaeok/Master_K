/**
 * 
 */

var IMGLS = {
	global : {

	},
	
	imgSearch:function(){
		var nowDate = $("#datePicker").val();
		console.log(nowDate);
		
		var path = "../assets/img/imgList/"+nowDate+"/";
		console.log(path);
		
	},
	
	imgUpload:function(){
		$('#myModal').modal('show');
	}
}
