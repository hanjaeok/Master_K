<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

	<jsp:include page="../tiles/header.jsp" />
	<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb float-xl-right">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Tables</a></li>
				<li class="breadcrumb-item active">Managed Tables</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">게시판 </h1>
			<!-- end page-header -->
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<!-- begin panel-heading -->
				<div class="panel-heading">
					<h4 class="panel-title">파일 리스트</h4>
					<div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
				</div>
				<!-- end panel-heading -->
				<!-- begin panel-body -->
				<div class="panel-body">
					<button type="button" class="btn btn-sm btn-primary pull-right" data-toggle="modal" data-target="#staticBackdrop" style="margin-bottom: 10px;margin-right: 20px;" onclick="FIUD.fileUpload();">등록</button>
					<table id="fileTbl" class="table table-striped table-bordered table-td-valign-middle f-s-11">
						<thead>
							<tr role="row">
								<th width="1%">No</th>
								<th width="40%">파일명</th>
								<th>업로드 날짜</th>
								<th width="5%">다운로드 수</th>
								<th>파일크기(byte)</th>
								<th width="10%">기타</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="FLIST" items="${FLIST }">
								<tr id="fileList">
   									<td>
   										<input type="checkbox" value="${FLIST.fname }" name="fileChck" id="fileChck"/>
									</td>
   									<td>${FLIST.fname}</td>
   									<td><fmt:formatDate value="${FLIST.regdate }" pattern="yyyyMMdd"/></td>
   									<td>${FLIST.fd_cnt}</td>
   									<td>${FLIST.f_size}</td>
   									<td>
   										<button type="button" class="btn btn-green" onclick="FIUD.fileDownload('${FLIST.fname}');">다운로드</button>
   										<button type="button" class="btn btn-danger">삭제</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div>
						<button type="button" class="btn btn-primary" onclick="FIUD.multiFileDown();">일괄 다운로드</button>
					</div>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->
		
<div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">파일 업로드</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post" action="multiFileUpload" enctype="multipart/form-data">
      	<div class="modal-body">
      		<label>파일 : </label>
      		<input type="file" name="file" multiple>
      		<br><br>
      	</div>
	    <div class="modal-footer">
	        <input type="submit" class="btn btn-primary" value="Understood">
   	        <input type="button" class="btn btn-secondary" data-dismiss="modal" value="Close">
	    </div>
      </form>
    </div>
  </div>
</div>
	
	<jsp:include page="../tiles/side.jsp" />
	
