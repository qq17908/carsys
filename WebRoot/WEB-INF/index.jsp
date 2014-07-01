<!DOCTYPE html>
<%@ page language="java" import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Bootstrap管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->

		<link href="koala/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="koala/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="koala/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="koala/css/jquery-ui-1.10.3.full.min.css" />
		<link rel="stylesheet" href="koala/css/datepicker.css" />
		<link rel="stylesheet" href="koala/css/ui.jqgrid.css" />

		<!-- fonts 
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
		-->
		<!-- ace styles -->

		<link rel="stylesheet" href="koala/css/ace.min.css" />
		<link rel="stylesheet" href="koala/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="koala/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="koala/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="koala/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="koala/js/html5shiv.js"></script>
		<script src="koala/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try {
					ace.settings.check('navbar', 'fixed')
				} catch (e) {}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand"> <small> <i class="icon-leaf"></i> Bootstrap管理系统 </small> </a>
					<!-- /.brand -->
				</div>
				<!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
								<i class="icon-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul	class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-ok"></i> 任务完成情况
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">客户关怀</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width: 65%" class="progress-bar "></div>
										</div> </a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">续保报价</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width: 35%"
												class="progress-bar progress-bar-danger"></div>
										</div> </a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">续保成功率</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width: 15%"
												class="progress-bar progress-bar-warning"></div>
										</div> </a>
								</li>

								<li>
									<a href="#"> 查看任务详情 <i class="icon-arrow-right"></i> </a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
								class="icon-bell-alt icon-animated-bell"></i> <span
								class="badge badge-important">8</span> </a>

							<ul
								class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i> 8条通知
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left"> <i
												class="btn btn-xs no-hover btn-pink icon-comment"></i> 系统消息
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div> </a>
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left"> <i
												class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												新任务 </span>
											<span class="pull-right badge badge-success">+8</span>
										</div> </a>
								</li>
								
								<li>
									<a href="#"> <i class="btn btn-xs btn-primary icon-user"></i>
										切换为编辑登录.. </a>
								</li>

								<li>
									<a href="#"> 查看所有通知 <i class="icon-arrow-right"></i> </a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
								class="icon-envelope icon-animated-vertical"></i> <span
								class="badge badge-success">5</span> </a>

							<ul
								class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-envelope-alt"></i> 5条消息
								</li>

								<li>
									<a href="#"> <img src="koala/avatars/avatar.png"
											class="msg-photo" alt="Alex's Avatar" /> <span
										class="msg-body"> <span class="msg-title"> <span
												class="blue">系统消息:</span> 系统有更新1.1 </span> <span class="msg-time">
												<i class="icon-time"></i> <span>1分钟以前</span> </span> </span> </a>
								</li>

								<li>
									<a href="#"> <img src="koala/avatars/avatar3.png"
											class="msg-photo" alt="Susan's Avatar" /> <span
										class="msg-body"> <span class="msg-title"> <span
												class="blue">Susan:</span> 不知道翻译... </span> <span class="msg-time">
												<i class="icon-time"></i> <span>20分钟以前</span> </span> </span> </a>
								</li>

								<li>
									<a href="#"> <img src="koala/avatars/avatar4.png"
											class="msg-photo" alt="Bob's Avatar" /> <span
										class="msg-body"> <span class="msg-title"> <span
												class="blue">Bob:</span> 到底是不是英文 ... </span> <span class="msg-time">
												<i class="icon-time"></i> <span>下午3:15</span> </span> </span> </a>
								</li>

								<li>
									<a href="inbox.do"> 查看所有消息 <i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
									class="nav-user-photo" src="koala/avatars/user.jpg"
									alt="Jason's Photo" /> <span class="user-info"> <small>欢迎光临,</small>
									Jason </span> <i class="icon-caret-down"></i> </a>

							<ul
								class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="profile.do"> <i class="icon-cog"></i> 设置 </a>
								</li>

								<li>
									<a href="#"> <i class="icon-user"></i> 个人资料 </a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#"> <i class="icon-off"></i> 退出 </a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- /.ace-nav -->
				</div>
				<!-- /.navbar-header -->
			</div>
			<!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try {
					ace.settings.check('main-container', 'fixed')
				} catch (e) {
				}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try {
							ace.settings.check('sidebar', 'fixed')
						} catch (e) {
						}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->
					<!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li class="active">
							<a href="index.do"> <i class="icon-dashboard"></i><span class="menu-text">工作台 </span> </a>
						</li>
						
						<li>
							<a href="calendar.do"> <i class="icon-calendar"></i> <span
								class="menu-text"> 日历 </span> </a>
						</li>
						
						<li>
							<a href="typography.do"> <i class="icon-globe"></i> <span
								class="menu-text">我的客户 </span> </a>
						</li>

						<li>
							<a href="typography.do"> <i class="icon-bar-chart"></i> <span
								class="menu-text">工作报表 </span> </a>
						</li>
					</ul>
					<!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left"
							data-icon1="icon-double-angle-left"
							data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try {
							ace.settings.check('sidebar', 'collapsed')
						} catch (e) {
						}
					</script>
				</div>
<!-- ************************************************************************************************************************************************************* -->
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try {
								ace.settings.check('breadcrumbs', 'fixed')
							} catch (e) {
							}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active">
								工作台
							</li>
						</ul>
						<!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon"> <input type="text"
										placeholder="车架号/车主姓名/联系电话 ..." class="nav-search-input"
										id="nav-search-input" autocomplete="off" /> <i
									class="icon-search nav-search-icon"></i> </span>
							</form>
						</div>
						<!-- #nav-search -->
					</div>
<!-- ************************************************************************************************************************************************************* -->						
					<div class="page-content">
						<div class="page-header">
							<h1>
								工作台
								<small><i class="icon-double-angle-right"></i> 今日待联系车主 </small>
							</h1>
						</div><!-- /.page-header -->
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<div class="col-sm-12 infobox-container">
											<div class="infobox infobox-green  ">
												<div class="infobox-icon">
													<i class="icon-comments"></i>
												</div>
												<div class="infobox-data">
													<span class="infobox-data-number">32</span>
													<div class="infobox-content">
														2个评论
													</div>
												</div>
												<div class="stat stat-success">
													8%
												</div>
											</div>

											<div class="infobox infobox-blue  ">
												<div class="infobox-icon">
													<i class="icon-heart"></i>
												</div>

												<div class="infobox-data">
													<span class="infobox-data-number">11</span>
													<div class="infobox-content">
														新粉丝
													</div>
												</div>

												<div class="badge badge-success">
													+32%
													<i class="icon-arrow-up"></i>
												</div>
											</div>

											<div class="infobox infobox-pink  ">
												<div class="infobox-icon">
													<i class="icon-shopping-cart"></i>
												</div>

												<div class="infobox-data">
													<span class="infobox-data-number">8</span>
													<div class="infobox-content">
														新订单
													</div>
												</div>
												<div class="stat stat-important">
													4%
												</div>
											</div>

											<div class="infobox infobox-red  ">
												<div class="infobox-icon">
													<i class="icon-beaker"></i>
												</div>

												<div class="infobox-data">
													<span class="infobox-data-number">7</span>
													<div class="infobox-content">
														调查
													</div>
												</div>
											</div>

											<div class="infobox infobox-orange2  ">
												<div class="infobox-chart">
													<span class="sparkline"
														data-values="196,128,202,177,154,94,100,170,224"></span>
												</div>

												<div class="infobox-data">
													<span class="infobox-data-number">6,251</span>
													<div class="infobox-content">
														页面查看次数
													</div>
												</div>

												<div class="badge badge-success">
													7.2%
													<i class="icon-arrow-up"></i>
												</div>
											</div>

											<div class="infobox infobox-blue2  ">
												<div class="infobox-progress">
													<div class="easy-pie-chart percentage" data-percent="42"
														data-size="46">
														<span class="percent">42</span>%
													</div>
												</div>

												<div class="infobox-data">
													<span class="infobox-text">交易使用</span>

													<div class="infobox-content">
														<span class="bigger-110">~</span> 剩余58GB
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br/>
								<div class="row">
									<div class="col-xs-12">
										<!--
										<h3 class="header smaller lighter blue">jQuery dataTables</h3>
										-->
										<div class="table-header">
											待联系车主
										</div>
										<div class="table-responsive">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center"><label><input type="checkbox" class="ace" /><span class="lbl"></span></label></th>
														<th>车牌号</th>
														<th>车主姓名</th>
														<th class="hidden-480">联系电话（手机）</th>
														<th><i class="icon-time bigger-110 hidden-480"></i>车险止期</th>
														<th class="hidden-480">Status</th>
														<th></th>
													</tr>
												</thead>

												<tbody>						    
												<c:if test="${!empty SEARCH_PROJECTTYPE_RESULTS_KEY}">
														<c:forEach var="projectType" items="${SEARCH_PROJECTTYPE_RESULTS_KEY}">
															<tr>
																<td class="center"><label><input type="checkbox" class="ace" /><span class="lbl"></span></label></td>
																<td><a href="#modal-form"><c:out value="${projectType.index}"></c:out></a></td>
																<td><c:out value="${projectType.projectType }"></c:out></td>
																<td class="hidden-480"><c:out value="${projectType.projectTypeAbbr}"></c:out></td>
																<td>2014/06/13</td>
																<td class="hidden-480"><span class="label label-sm label-warning">Expiring</span></td>
																<td>
																	<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																		<a href="#modal-form" role="button" class="blue" data-toggle="modal"><i class="icon-zoom-in bigger-130"></i></a>
																		<a class="green" href="updateProjectType.do?id=${projectType.id}"><i class="icon-pencil bigger-130"></i></a>
																		<a class="red" href="javascript:deleteContact('deleteProjectType.do?id=${projectType.id}');"><i class="icon-trash bigger-130"></i></a>
																	</div>
															
																	<div class="visible-xs visible-sm hidden-md hidden-lg">
																		<div class="inline position-relative">
																			<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
																				<i class="icon-caret-down icon-only bigger-120"></i>
																			</button>
																			<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																				<li><a href="#modal-form"  data-toggle="modal" class="tooltip-info" data-rel="tooltip" title="View"><span class="blue"><i class="icon-zoom-in bigger-120"></i></span></a></li>
																				<li><a href="updateProjectType.do?id=${projectType.id}" class="tooltip-success" data-rel="tooltip" title="Edit"><span class="green"><i class="icon-edit bigger-120"></i></span></a></li>
																				<li><a href="javascript:deleteContact('deleteProjectType.do?id=${projectType.id}');" class="tooltip-error" data-rel="tooltip" title="Delete"><span class="red"><i class="icon-trash bigger-120"></i></span></a></li>
																			</ul>
																		</div>
																	</div>
																</td>
															</tr>
														</c:forEach>
													</c:if>
												</tbody>
											</table>
										</div>
									</div>
								</div><!-- /.row -->
								
								<!-- 对话框 -->
								<div id="modal-form" class="modal" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="blue bigger">Please fill the following form fields</h4>
											</div>

											<div class="modal-body overflow-visible">
												<div class="row">
													<div class="col-xs-12 col-sm-5">
														<div class="space"></div>

														<input type="file" />
													</div>

													<div class="col-xs-12 col-sm-7">
														<div class="form-group">
															<label for="form-field-select-3">Location</label>

															<div>
																<select class="chosen-select" data-placeholder="Choose a Country...">
																	<option value="">&nbsp;</option>
																	<option value="AL">Alabama</option>
																	<option value="AK">Alaska</option>
																	<option value="AZ">Arizona</option>
																</select>
															</div>
														</div>

														<div class="space-4"></div>
														<div class="form-group">
															<label for="form-field-username">Username</label>
															<div><input class="input-large" type="text" id="form-field-username" placeholder="Username" value="alexdoe" />
															</div>
														</div>

														<div class="space-4"></div>

														<div class="form-group">
															<label for="form-field-first">Name</label>

															<div>
																<input class="input-medium" type="text" id="form-field-first" placeholder="First Name" value="Alex" />
																<input class="input-medium" type="text" id="form-field-last" placeholder="Last Name" value="Doe" />
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="modal-footer">
												<button class="btn btn-sm" data-dismiss="modal">
													<i class="icon-remove"></i>
													Cancel
												</button>

												<button class="btn btn-sm btn-primary">
													<i class="icon-ok"></i>
													Save
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div>	<!-- /.row -->
						</div><!-- /.page-content -->
					</div><!-- /.main-content -->
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">
										#438EB9
									</option>
									<option data-skin="skin-1" value="#222A2D">
										#222A2D
									</option>
									<option data-skin="skin-2" value="#C6487E">
										#C6487E
									</option>
									<option data-skin="skin-3" value="#D0D0D0">
										#D0D0D0
									</option>
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2"
								id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar">
								固定导航条
							</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2"
								id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar">
								固定滑动条
							</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2"
								id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">
								固定面包屑
							</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2"
								id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">
								切换到左边
							</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2"
								id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								切换窄屏
								<b></b>
							</label>
						</div>
					</div>
				</div>
				<!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->
			<a href="#" id="btn-scroll-up"	class="btn-scroll-up btn btn-sm btn-inverse"> <i class="icon-double-angle-up icon-only bigger-110"></i> </a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery
					|| document.write("<script src='koala/js/jquery-2.0.3.min.js'>"
							+ "<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
 			window.jQuery || document.write("<script src='koala/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->

		<script type="text/javascript">
			if ("ontouchend" in document)
				document.write("<script src='koala/js/jquery.mobile.custom.min.js'>"
						+ "<"+"/script>");
		</script>
		<script src="koala/js/bootstrap.min.js"></script>
		<script src="koala/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="koala/js/jquery.dataTables.min.js"></script>
		<script src="koala/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->

		<script src="koala/js/ace-elements.min.js"></script>
		<script src="koala/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
		function go(url)
		{
		    window.location = url;
		}
		
		function deleteContact(url)
		{
		    var isOK = confirm("您确定要删除该信息?");
		    if(isOK)
		    {
		        go(url);
		    }
		}
		
		jQuery(function($) {
			var oTable1 = $('#sample-table-2').dataTable({
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, null, null, null, {
					"bSortable" : false
				} ]
			});
	
			$('table th input:checkbox').on(
					'click',
					function() {
						var that = this;
						$(this).closest('table').find(
								'tr > td:first-child input:checkbox').each(
								function() {
									this.checked = that.checked;
									$(this).closest('tr').toggleClass('selected');
								});
					});
	
			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();
	
				var off2 = $source.offset();
				var w2 = $source.width();
	
				if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
					return 'right';
				return 'left';
			}
			
							/////////
				$('#modal-form input[type=file]').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'large'
				})
				
				//chosen plugin inside a modal will have a zero width because the select element is originally hidden
				//and its width cannot be determined.
				//so we set the width after modal is show
				$('#modal-form').on('shown.bs.modal', function () {
					$(this).find('.chosen-container').each(function(){
						$(this).find('a:first-child').css('width' , '210px');
						$(this).find('.chosen-drop').css('width' , '210px');
						$(this).find('.chosen-search input').css('width' , '200px');
					});
				})
		})
		</script>
	</body>
</html>

