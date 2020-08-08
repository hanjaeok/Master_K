<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Login Page</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="../assets/css/default/app.min.css" rel="stylesheet" />
	<!-- ================== END BASE CSS STYLE ================== -->
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin login -->
		<div class="login login-v1">
			<!-- begin login-container -->
			<div class="login-container">
				<!-- begin login-header -->
				<div class="login-header">
					<div class="brand">
						<span class="logo"></span> <b>Color</b> Admin
						<small>Hanker의 모든것..</small>
					</div>
					<div class="icon">
						<i class="fa fa-lock"></i>
					</div>
				</div>
				<!-- end login-header -->
				<!-- begin login-body -->
				<div class="login-body">
					<!-- begin login-content -->
					<div class="login-content">
						<c:url value="/login" var="loginUrl" />
						<form:form action="${loginUrl }" name="f" method="POST" class="margin-bottom-0">
							<c:if test="${param.error != null}"> 
								<p>아이디와 비밀번호가 잘못되었습니다.</p>
							</c:if> 
							<c:if test="${param.logout != null}"> 
								<p>로그아웃 하였습니다.</p> 
							</c:if>

							<div class="form-group m-b-20">
								<input type="text" class="form-control form-control-lg inverse-mode" id="id" name="id" placeholder="ID" required />
							</div>
							<div class="form-group m-b-20">
								<input type="password" class="form-control form-control-lg inverse-mode" id="password" name="password" placeholder="Password" required />
							</div>
							<div class="checkbox checkbox-css m-b-20">
								<input type="checkbox" id="remember_checkbox" /> 
								<label for="remember_checkbox">
								아이디 저장
								</label>
							</div>
							<div class="login-buttons">
								<button type="submit" id="loginFn" class="btn btn-success btn-block btn-lg">로그인</button>
								<button type="button" class="btn btn-warning btn-block btn-lg" onclick="location.href='/register'">회원가입</button>
							</div>
						</form:form>
					</div>
					<!-- end login-content -->
				</div>
				<!-- end login-body -->
			</div>
			<!-- end login-container -->
		</div>
		<!-- end login -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="../assets/js/app.min.js"></script>
	<script src="../assets/js/Login.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="../assets/js/theme/default.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
</body>
	<script>
		$(function(){
			$("#userId").keyup(function(){
				if(window.event.keyCode == 13){
					LOGIN.loginChck();
				}
			});
			$("#userPw").keyup(function(){
				if(window.event.keyCode == 13){
					LOGIN.loginChck();
				}
			});
		});
	</script>
</html>
