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
					<h4 class="panel-title">게시판</h4>
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
				<!-- 글쓰기 폼 -->
					<article>
						<div class="container" role="main">
							<h2>글 작성</h2>
							<form name="form" id="form" role="form" method="post">
								<div class="mb-3">
									<label for="title">제목</label> 
									<input type="text" class="form-control" name="title" id="title"	placeholder="제목을 입력해 주세요">
								</div>
								<div class="mb-3">
									<label for="reg_id">작성자</label> 
									<input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 입력해 주세요">
								</div>
								<div class="mb-3">
									<label for="ir1">내용</label>
									<textarea name="popContent" id="popContent" rows="10" cols="100" style="width: 1138px;"></textarea>
								</div>
							</form>
							<div>
								<button type="submit" class="btn btn-sm btn-primary" data-click="swal-danger" id="btnSave" onclick="submitContents();">저장</button>
								<button type="button" class="btn btn-sm btn-danger"  id="btnList" onclick="location.href='../table/boardList'">목록</button>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>
<jsp:include page="../tiles/side.jsp" />

<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder:"popContent",
			sSkinURI: "../se2/SmartEditor2Skin.html",
			fCreator: "createSEditor2",
		});
</script>
