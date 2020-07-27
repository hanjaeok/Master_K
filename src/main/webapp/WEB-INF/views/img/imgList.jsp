<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../tiles/header.jsp" />

<link rel="stylesheet" href="../assets/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">
	
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb float-xl-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Gallery</a></li>
				<li class="breadcrumb-item active">Gallery</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Gallery <small>Picture..</small></h1>
			<!-- end page-header -->
			<div class="panel panel-inverse">
				<div class="panel-body form-inline form-group">
					<label style="margin-right: 1442;">이미지를 등록합니다.</label>
					<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#staticBackdrop" onclick="IMGLS.imgUpload();">등록</button>
				</div>
			</div>
			<div class="panel panel-inverse">
				<div class="panel-body form-inline form-group">
					<!-- 시작시 기본 날짜 설정은 value를 이용 -->
					<label style="margin-right: 10;">날짜 선택 :</label>
					<input type="text" id="datePicker" class="form-control width-150">
					
					<button type="button" class="btn btn-primary" style="margin-left: 1340px;" id="imgSearch" onclick="IMGLS.imgSearch();">검색</button>
				</div>
			</div>
			
			<!-- begin superbox -->
			<div class="panel panel-inverse">
				<div class="panel-body">
					<div class="superbox" data-offset="50" id="imgBox">
					<!-- Controller단 구성완료 시 주석 해제 예정 -->
					<c:forEach items="${imgList }" var="imgList">
						<%-- <div class="superbox-list"> 
							<img src="${imgList.img_pt_name }" data-img="${imgList.img_pt_name }" alt=""> 
						</div> --%>
						<div class="superbox-list">	
							<img src="../assets/img/imgList/202007/${imgList.img_name }" data-img="../assets/img/imgList/202007/${imgList.img_name }" alt="">
						</div>
					</c:forEach>
					</div>
				</div>
			</div>
			<!-- end superbox -->
		</div>
		<!-- end #content -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 535px;">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">이미지 업로드</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post" action="imgUpload" enctype="multipart/form-data">
      	<div class="modal-body">
      		<label for="imgPre">이미지파일 : </label>
      		<input type="file" id="imgPre" name="file" multiple>
      		<div class="select_img"><img src="" /></div>
      		<br><br>
      		
      		<%=application.getRealPath("/") %>
      	</div>
	    <div class="modal-footer">
	        <input type="submit" class="btn btn-primary" value="등록">
   	        <input type="button" class="btn btn-secondary" data-dismiss="modal" value="닫기">
	    </div>
      </form>
    </div>
  </div>
</div>
	
	
	
	<jsp:include page="../tiles/side.jsp" />
	<script src="../assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.js"></script>
	<script src="../assets/plugins/bootstrap-datepicker/dist/locales/bootstrap-datepicker.ko.min.js"></script>

</body>
<script>
	$(function(){
		$('#datePicker').datepicker({
			viewMode: "months",
			minViewMode: "months",
			format: "yyyymm",
			autoclose: true,
			language: "ko"
		});
		
		$("#imgPre").change(function(){
			if(this.files && this.files[0]){
				var reader = new FileReader;
				reader.onload = function(data){
					$(".select_img img").attr("src", data.target.result).width(500);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
	});
</script>
</html>
