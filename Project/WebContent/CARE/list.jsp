<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="guestbook.service.Message"%>
<%@ page import="guestbook.service.MessageListView"%>
<%@ page import="guestbook.service.GetMessageListService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String pageNumberStr = request.getParameter("page");
int pageNumber = 1;
if (pageNumberStr != null) {
	pageNumber = Integer.parseInt(pageNumberStr);
}

GetMessageListService messageListService = GetMessageListService.getInstance();
MessageListView viewData = messageListService.getMessageList(pageNumber);
%>
<c:set var="viewData" value="<%=viewData%>" />



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%-- <%@ page import="util.Cookies"%>
<%
	Cookies cookies = new Cookies(request);
%>

<%
	if (!cookies.exists("AUTH")) {
		response.sendRedirect("../login/login.jsp");
	}
%> --%>

<%-- 	<%
		String memberId = (String) session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;

	if (!login) {
		response.sendRedirect("../login/login.jsp");
	}
	%>
 --%>



	<!DOCTYPE html>
	<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Blank Page</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">





<script type="text/javascript">
	function googleTranslateElementInit() {
		new google.translate.TranslateElement({
			pageLanguage : 'ko',
			includedLanguages : 'en,ja,ko,zh-CN',
			layout : google.translate.TranslateElement.InlineLayout.SIMPLE
		}, 'google_translate_element');
	}
</script>

<script type="text/javascript"
	src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>



<!-- 제이쿼리 -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery-1.10.2.min.js"></script>

<!-- 언어선택 시작 -->
<script type="text/javascript">
	//<![CDATA[
	$(function() {
		$("#locale option[value=${param.locale}]").attr("selected","selected");
		$("#locale").change(function(){
			var locale = $(this).val();
			window.location.href="index.jsp?locale="+locale;			
		});
	});
	//]]>
</script>
<!-- 언어선택 끝 -->





</head>
<body class="hold-transition skin-blue sidebar-mini">


<fmt:setLocale value="${param.locale}" />
<fmt:bundle basename="resource.message">



	<!-- Site wrapper -->
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="../main/index.jsp?locale=ko" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Admin</b>LTE</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li><div style="margin-top: 11px;">
								<select name="locale" id="locale">
									<option value="ko">한글</option>
									<option value="en">영어</option>
									<option value="ja">일본어</option>
									<option value="zh">중국어</option>
								</select>
							</div></li>
						<li><div style="margin-top: 11px;"
								id="google_translate_element"></div></li>
						<li class="dropdown messages-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<img
														src="<%=request.getContextPath()%>/resources/dist/img/user2-160x160.jpg"
														class="img-circle" alt="User Image">
												</div>
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
									</ul>
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul></li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><a href="#"> <i class="fa fa-users text-aqua"></i>
												5 new members joined today
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul></li>
						<!-- Tasks: style can be found in dropdown.less -->
						<li class="dropdown tasks-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul></li>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="<%=request.getContextPath()%>/resources/dist/img/user2-160x160.jpg"
								class="user-image" alt="User Image"> <span
								class="hidden-xs"> <%-- <%=cookies.getValue("AUTH")%> --%><%-- <%=memberId%> --%><%-- ${MEMBERID} --%>${authUser.name}</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="<%=request.getContextPath()%>/resources/dist/img/user2-160x160.jpg"
									class="img-circle" alt="User Image">

									<p>
										Alexander Pierce - Web Developer <small>Member since
											Nov. 2012</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">Followers</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Sales</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Friends</a>
										</div>
									</div> <!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="profile.do" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="${pageContext.request.contextPath}/logout.do" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>

		<!-- =============================================== -->

		<!-- Left side column. contains the sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img
							src="<%=request.getContextPath()%>/resources/dist/img/user2-160x160.jpg"
							class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Alexander Pierce</p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-dashboard"></i> <span>Dashboard</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../../index.html"><i class="fa fa-circle-o"></i>
									Dashboard v1</a></li>
							<li><a href="../../index2.html"><i
									class="fa fa-circle-o"></i> Dashboard v2</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
							<span>Layout Options</span> <span class="pull-right-container">
								<span class="label label-primary pull-right">4</span>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../layout/top-nav.html"><i
									class="fa fa-circle-o"></i> Top Navigation</a></li>
							<li><a href="../layout/boxed.html"><i
									class="fa fa-circle-o"></i> Boxed</a></li>
							<li><a href="../layout/fixed.html"><i
									class="fa fa-circle-o"></i> Fixed</a></li>
							<li><a href="../layout/collapsed-sidebar.html"><i
									class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
						</ul></li>
					<li><a href="../widgets.html"> <i class="fa fa-th"></i> <span>Widgets</span>
							<span class="pull-right-container"> <small
								class="label pull-right bg-green">Hot</small>
						</span>
					</a></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-pie-chart"></i> <span>Charts</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../charts/chartjs.html"><i
									class="fa fa-circle-o"></i> ChartJS</a></li>
							<li><a href="../charts/morris.html"><i
									class="fa fa-circle-o"></i> Morris</a></li>
							<li><a href="../charts/flot.html"><i
									class="fa fa-circle-o"></i> Flot</a></li>
							<li><a href="../charts/inline.html"><i
									class="fa fa-circle-o"></i> Inline charts</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
							<span>UI Elements</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../UI/general.html"><i
									class="fa fa-circle-o"></i> General</a></li>
							<li><a href="../UI/icons.html"><i class="fa fa-circle-o"></i>
									Icons</a></li>
							<li><a href="../UI/buttons.html"><i
									class="fa fa-circle-o"></i> Buttons</a></li>
							<li><a href="../UI/sliders.html"><i
									class="fa fa-circle-o"></i> Sliders</a></li>
							<li><a href="../UI/timeline.html"><i
									class="fa fa-circle-o"></i> Timeline</a></li>
							<li><a href="../UI/modals.html"><i
									class="fa fa-circle-o"></i> Modals</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>Forms</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../forms/general.html"><i
									class="fa fa-circle-o"></i> General Elements</a></li>
							<li><a href="../forms/advanced.html"><i
									class="fa fa-circle-o"></i> Advanced Elements</a></li>
							<li><a href="../forms/editors.html"><i
									class="fa fa-circle-o"></i> Editors</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>Tables</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../tables/simple.html"><i
									class="fa fa-circle-o"></i> Simple tables</a></li>
							<li><a href="../tables/data.html"><i
									class="fa fa-circle-o"></i> Data tables</a></li>
						</ul></li>
					<li><a href="../calendar.html"> <i class="fa fa-calendar"></i>
							<span>Calendar</span> <span class="pull-right-container">
								<small class="label pull-right bg-red">3</small> <small
								class="label pull-right bg-blue">17</small>
						</span>
					</a></li>
					<li><a href="../mailbox/mailbox.html"> <i
							class="fa fa-envelope"></i> <span>Mailbox</span> <span
							class="pull-right-container"> <small
								class="label pull-right bg-yellow">12</small> <small
								class="label pull-right bg-green">16</small> <small
								class="label pull-right bg-red">5</small>
						</span>
					</a></li>
					<li class="treeview active"><a href="#"> <i
							class="fa fa-folder"></i> <span>Examples</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../guestbook/board.jsp"><i
									class="fa fa-circle-o"></i> 회원게시판</a></li>
							<li><a href="../guestbook/list.jsp"><i
									class="fa fa-circle-o"></i> 방명록</a></li>
							<li><a href="../examples/boardGeneral.jsp"><i
									class="fa fa-circle-o"></i> 일반 게시판</a></li>
							<li><a href="../examples/boardDonga.jsp"><i
									class="fa fa-circle-o"></i> 동아일보 게시판</a></li>
							<li><a href="../examples/chosun.html"><i
									class="fa fa-circle-o"></i> 조선닷컴</a></li>
							<li><a href="../examples/gallery.html"><i
									class="fa fa-circle-o"></i> 갤러리</a></li>
							<li><a href="invoice.html"><i class="fa fa-circle-o"></i>
									Invoice</a></li>
							<li><a href="profile.html"><i class="fa fa-circle-o"></i>
									Profile</a></li>
							<li><a href="login.html"><i class="fa fa-circle-o"></i>
									Login</a></li>
							<li><a href="register.html"><i class="fa fa-circle-o"></i>
									Register</a></li>
							<li><a href="lockscreen.html"><i class="fa fa-circle-o"></i>
									Lockscreen</a></li>
							<li><a href="404.html"><i class="fa fa-circle-o"></i>
									404 Error</a></li>
							<li><a href="500.html"><i class="fa fa-circle-o"></i>
									500 Error</a></li>
							<li class="active"><a href="<%=request.getContextPath()%>/view/examples/blank.jsp"><i
									class="fa fa-circle-o"></i> Blank Page</a></li>
							<li><a href="pace.html"><i class="fa fa-circle-o"></i>
									Pace Page</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-share"></i>
							<span>Multilevel</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
							<li class="treeview"><a href="#"><i
									class="fa fa-circle-o"></i> Level One <span
									class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span> </a>
								<ul class="treeview-menu">
									<li><a href="#"><i class="fa fa-circle-o"></i> Level
											Two</a></li>
									<li class="treeview"><a href="#"><i
											class="fa fa-circle-o"></i> Level Two <span
											class="pull-right-container"> <i
												class="fa fa-angle-left pull-right"></i>
										</span> </a>
										<ul class="treeview-menu">
											<li><a href="#"><i class="fa fa-circle-o"></i> Level
													Three</a></li>
											<li><a href="#"><i class="fa fa-circle-o"></i> Level
													Three</a></li>
										</ul></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
						</ul></li>
					<li><a href="https://adminlte.io/docs"><i
							class="fa fa-book"></i> <span>Documentation</span></a></li>
					<li class="header">LABELS</li>
					<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-yellow"></i>
							<span>Warning</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- =============================================== -->
</fmt:bundle>



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			방명록 목록 <small>it all starts here</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Examples</a></li>
			<li class="active">Blank page</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">Title</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool"
						data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"
						data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>
			<div class="box-body">




				<form action="writeMessage.jsp" method="post">
					이름: <input type="text" name="guestName"> <br> 암호: <input
						type="password" name="password"> <br> 메시지:
					<textarea name="message" cols="30" rows="3"></textarea>
					<br> <input type="submit" value="메시지 남기기" />
				</form>
				<hr>
				<c:if test="${viewData.isEmpty()}">
등록된 메시지가 없습니다.
</c:if>

				<c:if test="${!viewData.isEmpty()}">
					<table border="1">
						<c:forEach var="message" items="${viewData.messageList}">
							<tr>
								<td>메시지 번호: ${message.id} <br /> 손님 이름:
									${message.guestName} <br /> 메시지: ${message.message} <br /> <a
									href="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a>
								</td>
							</tr>
						</c:forEach>
					</table>

					<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
						<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
					</c:forEach>

				</c:if>








			</div>
			<!-- /.box-body -->
			<div class="box-footer">Footer</div>
			<!-- /.box-footer-->
		</div>
		<!-- /.box -->

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>

      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<%= request.getContextPath() %>/resources/bower_components/jquery/dist/jquery.min.js"></script>
<%-- <script type="text/javascript" src="<%= request.getContextPath() %>/view/main/js/jquery-1.10.2.min.js"></script> --%>

<!-- Bootstrap 3.3.7 -->
<script src="<%= request.getContextPath() %>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<%= request.getContextPath() %>/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<%= request.getContextPath() %>/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<%= request.getContextPath() %>/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<%= request.getContextPath() %>/resources/dist/js/demo.js"></script>
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
</body>
</html>