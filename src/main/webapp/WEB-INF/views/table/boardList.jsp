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
					<table id="data-table-default" class="table table-striped table-bordered table-td-valign-middle f-s-13" role="grid" aria-describedby="data-table-default_info" >
						<thead>
							<tr role="row">
								<th width="1%">
									<input type="checkbox" id="tblChkAll" name="tblChkAll" value="all">
								</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th width="5%">조회수</th>
								<th width="5%">기타</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="list">
								<tr>
									<td>
										<input type="checkbox" id="tblChk" name="tblChk" value="${list.bno }">
									</td>
									<td onclick="BDLS.boardView(${list.bno})" style="cursor:pointer;" id="boardTt">
										${list.title }
									</td>
									<td>${list.writer }</td>
									<td><fmt:formatDate value="${list.regdate }" pattern="yyyyMMdd"/> </td>
									<td>${list.viewcnt }</td>
									<td>
										<button type="button" id="delBoard" class="btn btn-sn btn-danger" onclick="BDLS.delSwal('${list.bno}');" style="margin-left:5px;">삭제</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<button type="button" class="btn btn-sm btn-primary" onclick="location.href='../table/boardRegister'">글작성</button>
					<button type="button" class="btn btn-sm btn-primary" onclick="BDLS.chkSelect();">선택</button>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- end #content -->
	</div>
	<!-- end page container -->
	<jsp:include page="../tiles/side.jsp" />
	
