<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin register -->
		<div class="register register-with-news-feed">
			<!-- begin news-feed -->
			<div class="news-feed">
				<div class="news-image" style="background-image: url(../assets/img/login-bg/login-bg-15.jpg)"></div>
				<div class="news-caption">
					<h4 class="caption-title"><b>Master</b> K</h4>
					<p>
						
					</p>
				</div>
			</div>
			<!-- end news-feed -->
			<!-- begin right-content -->
			<div class="right-content">
				<!-- begin register-header -->
				<h1 class="register-header">
					회원가입
					<small>환영합니다. Master_K의 계정을 생성합니다.</small>
				</h1>
				<!-- end register-header -->
				<!-- begin register-content -->
				<div class="register-content">
					<form method="POST" class="margin-bottom-0">
						<label class="control-label">이름 <span class="text-danger">*</span></label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input type="text" class="form-control" id="uname" placeholder="이름을 입력해주세요." required />
							</div>
						</div>
						<label class="control-label">이메일 <span class="text-danger">*</span></label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input type="text" class="form-control" id="email" placeholder="이메일 주소를 입력해주세요." required />
							</div>
						</div>
						<label class="control-label">ID <span class="text-danger">*</span></label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input type="text" class="form-control" id="username" placeholder="ID를 입력해주세요." required style="float: left;width: 70%;"/>
								<button type="button" class="btn btn-gray" style="margin-left: 40px;" onclick="LOGIN.idChk();">중복확인</button>
							</div>
						</div>
						<label class="control-label">Password <span class="text-danger">*</span></label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input type="password" class="form-control" id="password" placeholder="Password를 입력해주세요." required />
							</div>
						</div>
						<div class="checkbox checkbox-css m-b-30">
							<div class="checkbox checkbox-css m-b-30">
								<input type="checkbox" id="agreement_checkbox" value="">
								<label for="agreement_checkbox">
								회원가입을 하시겠습니까?
								</label>
							</div>
						</div>
						<div class="register-buttons">
							<button type="button" class="btn btn-primary btn-block btn-lg" onclick="LOGIN.register();">회원가입</button>
						</div>
						<div class="m-t-30 m-b-30 p-b-30">
							이미 회원이십니까? <a href="/login">여기</a>를 눌러 로그인하세요.
						</div>
						<hr />
						<p class="text-center mb-0">
							&copy; MasterK All Right Reserved 2020
						</p>
					</form>
				</div>
				<!-- end register-content -->
			</div>
			<!-- end right-content -->
		</div>
		<!-- end register -->
		
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="../assets/js/app.min.js"></script>
	<script src="../assets/js/theme/default.min.js"></script>
	<script src="../assets/js/Login.js"></script>
	<!-- ================== END BASE JS ================== -->
</body>
</html>
