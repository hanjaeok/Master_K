<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page session="false" %>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Master | K</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="../assets/css/default/app.min.css" rel="stylesheet" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="../assets/plugins/superbox/superbox.min.css" rel="stylesheet" />
	<link href="../assets/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="../assets/plugins/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<style>
		body{
			background-image: url('../assets/img/background/pic_t1.jpg');
		}
	</style>
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar-default">
			<!-- begin navbar-header -->
			<div class="navbar-header">
				<a href="/" class="navbar-brand"><i class="fab fa-lg fa-fw m-r-10 fa-hire-a-helper"></i> <b>Master</b> K</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			
			<div class="f-s-18 m-t-10 text-center">
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<a href="/admin/adminPage" class="dropdown-item m-l-40" style="border-right: 1px solid gray; border-left: 1px solid gray">관리자</a>
				</sec:authorize>
			</div>
			<!-- end navbar-header -->
			
			<!-- begin header-nav -->
			<ul class="navbar-nav navbar-right">
				<li class="navbar-form">
					<form action="" method="POST" name="search_form">
					</form>
				</li>
				<li class="dropdown navbar-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<div class="image image-icon bg-black text-grey-darker">
							<i class="fa fa-user"></i>
						</div>
						
						<sec:authorize access="isAuthenticated()">
							<sec:authentication property="principal.username" var="loginID" />
							<span class="d-none d-md-inline">${loginID }</span> 
						</sec:authorize>
						
						<b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="javascript:;" class="dropdown-item">Edit Profile</a>
						<!-- <a href="javascript:;" class="dropdown-item"><span class="badge badge-danger pull-right">2</span> Inbox</a>
						<a href="javascript:;" class="dropdown-item">Calendar</a>
						<a href="javascript:;" class="dropdown-item">Setting</a> -->
						<div class="dropdown-divider"></div>
						<%-- <a href="${pageContext.request.contextPath }/logout" class="dropdown-item">Log Out</a> --%>
						<sec:authorize access="isAnonymous()"> 
							<p><a href="<c:url value="/login" />"  class="dropdown-item" >로그인</a></p> 
						</sec:authorize>

						<sec:authorize access="isAuthenticated()">
							<form:form action="${pageContext.request.contextPath }/logout" method="POST">
								<a href="${pageContext.request.contextPath }/logout"  class="dropdown-item" >로그아웃</a>
							</form:form>
						</sec:authorize>
					</div>
				</li>
			</ul>
			<!-- end header navigation right -->
		</div>
		<!-- end #header -->
		
		<script src="../assets/js/Login.js"></script>