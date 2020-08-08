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
					<h4 class="panel-title">게시판 상세</h4>
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
					<article>
						<div class="container" role="main">
							<h2>board Form</h2>
							<form name="form" id="form" role="form" method="GET">
								<div class="mb-3">
									<label for="title">제목</label> 
									<input type="text" class="form-control" name="title" id="view_title" value="${RS_BV.title }" readonly>
								</div>
								<div class="mb-3">
									<label for="reg_id">작성자</label> 
									<input type="text" class="form-control" name="writer" id="view_writer" value="${RS_BV.writer }" readonly>
								</div>
								<div class="mb-3">
									<label for="content_label">내용</label>
									<div class="form-control" readonly>
										${RS_BV.content }
									</div>
								</div>
							</form>
							<div>
								<button type="button" class="btn btn-sm btn-danger" id="btnModi">수정</button>
								<button type="button" class="btn btn-sm btn-primary" id="btnListMv" onclick="location.href='../table/boardList'">목록</button>
								<button type="button" class="btn btn-sm btn-primary" id="okChk" onclick="BDLS.boardModify(${RS_BV.bno})" style="display:none;">확인</button>
								<button type="button" class="btn btn-sm btn-danger" id="canclChk" onclick="BDLS.boardView(${RS_BV.bno})" style="display:none;">취소</button>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>

<jsp:include page="../tiles/side.jsp" />

<script>
	$(function(){
		
		$("#btnModi").on("click", function(){
			// 읽기전용 해제
			$("#view_title").removeAttr("readonly");
			$("#view_ir1").removeAttr("readonly");
			
			// 버튼 체인지
			$("#btnModi").hide();
			$("#btnListMv").hide();
			$("#okChk").show();
			$("#canclChk").show();
		});
		
		
	});

	
</script>