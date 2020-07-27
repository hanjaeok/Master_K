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
				<a href="/" class="navbar-brand"><span class="navbar-logo"></span> <b>Color</b> Admin</a>
				<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- end navbar-header -->
			
			<!-- begin header-nav -->
			<ul class="navbar-nav navbar-right">
				<li class="navbar-form">
					<form action="" method="POST" name="search_form">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter keyword" />
							<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
						</div>
					</form>
				</li>
				<li class="dropdown">
					<a href="#" data-toggle="dropdown" class="dropdown-toggle f-s-14">
						<i class="fa fa-bell"></i>
						<span class="label">0</span>
					</a>
					<div class="dropdown-menu media-list dropdown-menu-right">
						<div class="dropdown-header">NOTIFICATIONS (0)</div>
						<div class="text-center width-300 p-b-10 p-t-10">
							No notification found
						</div>
					</div>
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
						<a href="javascript:;" class="dropdown-item"><span class="badge badge-danger pull-right">2</span> Inbox</a>
						<a href="javascript:;" class="dropdown-item">Calendar</a>
						<a href="javascript:;" class="dropdown-item">Setting</a>
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