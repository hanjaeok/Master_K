<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">
				<!-- begin sidebar user -->
				<ul class="nav">
					<li class="nav-profile">
						<a href="javascript:;" data-toggle="nav-profile">
							<div class="cover with-shadow"></div>
							<div class="image image-icon bg-black text-grey-darker">
								<i class="fa fa-user"></i>
							</div>
							<div class="info">
								<b class="caret pull-right"></b>
								Sean Ngu
								<small>Front end developer</small>
							</div>
						</a>
					</li>
					<li>
						<ul class="nav nav-profile">
							<li><a href="javascript:;"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="javascript:;"><i class="fa fa-pencil-alt"></i> Send Feedback</a></li>
							<li><a href="javascript:;"><i class="fa fa-question-circle"></i> Helps</a></li>
						</ul>
					</li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">Navigation</li>
					<li class="">
						<a href="/">
							<i class="fa fa-th-large"></i>
							<span>Home</span>
						</a>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
							<b class="caret"></b>
							<i class="fa fa-align-left"></i> 
							<span>메뉴 리스트</span>
						</a>
						<ul class="sub-menu">
							<li><a href="../table/boardList">테이블</a></li>
							<li><a href="../file/fileList">파일데이터</a></li>
							<li><a href="../img/imgList">갤러리</a></li>
						</ul>
					</li>
					<!-- begin sidebar minify button -->
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
					<!-- end sidebar minify button -->
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="../assets/js/file/file.js"></script>
	<script src="../assets/js/img/image.js"></script>
	<script src="../assets/js/table/boardList.js"></script>
	<script src="../assets/js/app.min.js"></script>
	<script src="../assets/js/theme/default.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="../assets/plugins/datatables.net/js/jquery.dataTables.min.js"></script>
	<!-- //<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script> -->
	<script src="../assets/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="../assets/plugins/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="../assets/plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
	<script src="../assets/js/demo/table-manage-default.demo.js"></script>
	<script src="../assets/plugins/superbox/jquery.superbox.min.js"></script>
	<script src="../assets/js/demo/gallery-v2.demo.js"></script>	
	<!-- ================== END PAGE LEVEL JS ================== -->
	<!-- ================== END PAGE LEVEL JS ================== -->
</body>
</html>
	