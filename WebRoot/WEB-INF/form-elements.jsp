<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@include file="views/taglib_include.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Bootstrap表单组件 - Bootstrap管理系统</title>
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
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							Ace Admin
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

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
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
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
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.do">首页</a>
							</li>

							<li>
								<a href="index.do">工作台</a>
							</li>
							<li class="active">车主信息</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								任务信息
								<small>
									<i class="icon-double-angle-right"></i>
									客户关怀
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
									<ul class="wizard-steps">
										<li data-target="#step1" class="active">
											<span class="step">1</span>
											<span class="title">客户关怀</span>
										</li>

										<li data-target="#step2">
											<span class="step">2</span>
											<span class="title">粗略报价</span>
										</li>

										<li data-target="#step3">
											<span class="step">3</span>
											<span class="title">精确报价</span>
										</li>

										<li data-target="#step4">
											<span class="step">4</span>
											<span class="title">录单</span>
										</li>
									</ul>
								</div>
								
								<div class="space-4"></div>
								<form:form  class="form-horizontal" role="form" action="updateProjectType.do" method="post" commandName="form-elements">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 车主姓名 </label>
										<div class="col-sm-9">
											<form:input type="text" id="form-field-1"  class="col-xs-10 col-sm-5" path="projectType"/>
											<!--<input type="text" id="form-field-1"  class="col-xs-10 col-sm-5" />-->
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 联系电话 </label>
										<div class="col-sm-9">
											<form:input type="text" id="form-field-2" class="col-xs-10 col-sm-5"  path="projectTypeAbbr"/>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-3"> 车牌号 </label>
										<div class="col-sm-9">
											<form:input type="text" id="form-field-3" class="col-xs-10 col-sm-5"  path="index"/>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-4">品牌型号</label>
										<div class="col-sm-9">
											<input type="text" id="form-field-4"  class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-5">车架号</label>
										<div class="col-sm-9">
											<input type="text" id="form-field-5"  class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right for="form-field-6">初登日期</label>
										<div class="input-group col-sm-4">
											<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" />
											<span class="input-group-addon"> <i	class="icon-calendar bigger-110"></i> </span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-7">原保险公司</label>
										<div class="col-sm-4">
											<select class="form-control" id="form-field-select-1">
												<option value="">&nbsp;</option>
												<option value="PAIC">中国平安财产保险股份有限公司</option>
												<option value="CPIC">中国太平洋财产保险股份有限公司</option>
												<option value="CICP">中华联合财产保险公司</option>
												<option value="GPIC">中国人寿财产保险公司</option>
											</select>
										</div>

									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-8">保险起止日期</label>

										<div class="col-xs-4 col-sm-4">
											<div class="input-group">
												<span class="input-group-addon"> <i	class="icon-calendar bigger-110"></i> </span>
												<input class="form-control" type="text"	name="date-range-picker" id="id-date-range-picker-1" />
											</div>
										</div>
									</div>
									
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-8">改日联系</label>
										<div class="input-group col-sm-4">
											<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" />
											<span class="input-group-addon"> <i	class="icon-calendar bigger-110"></i> </span>
										</div>
										<div class="col-xs-2 col-sm-2">
											<div class="input-group bootstrap-timepicker">
												<input id="timepicker1" type="text" class="form-control" />
												<span class="input-group-addon"> <i
													class="icon-time bigger-110"></i> </span>
											</div>
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button">
												<i class="icon-ok bigger-110"></i>
												提交
											</button>
											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												取消
											</button>
										</div>
									</div>
								</form:form>
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
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
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> 
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>-->
		<!-- <![endif]-->

		<!--[if IE]>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='koala/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='koala/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='koala/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="koala/js/bootstrap.min.js"></script>
		<script src="koala/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="koala/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="koala/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="koala/js/jquery.ui.touch-punch.min.js"></script>
		<script src="koala/js/chosen.jquery.min.js"></script>
		<script src="koala/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="koala/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="koala/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="koala/js/date-time/moment.min.js"></script>
		<script src="koala/js/date-time/daterangepicker.min.js"></script>
		<script src="koala/js/bootstrap-colorpicker.min.js"></script>
		<script src="koala/js/jquery.knob.min.js"></script>
		<script src="koala/js/jquery.autosize.min.js"></script>
		<script src="koala/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="koala/js/jquery.maskedinput.min.js"></script>
		<script src="koala/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->

		<script src="koala/js/ace-elements.min.js"></script>
		<script src="koala/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				$('#id-disable-check').on('click', function() {
					var inp = $('#form-input-readonly').get(0);
					if(inp.hasAttribute('disabled')) {
						inp.setAttribute('readonly' , 'true');
						inp.removeAttribute('disabled');
						inp.value="This text field is readonly!";
					}
					else {
						inp.setAttribute('disabled' , 'disabled');
						inp.removeAttribute('readonly');
						inp.value="This text field is disabled!";
					}
				});
			
			
				$(".chosen-select").chosen(); 
				$('#chosen-multiple-style').on('click', function(e){
					var target = $(e.target).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			
			
				$('[data-rel=tooltip]').tooltip({container:'body'});
				$('[data-rel=popover]').popover({container:'body'});
				
				$('textarea[class*=autosize]').autosize({append: "\n"});
				$('textarea.limited').inputlimiter({
					remText: '%n character%s remaining...',
					limitText: 'max allowed : %n.'
				});
			
				$.mask.definitions['~']='[+-]';
				$('.input-mask-date').mask('99/99/9999');
				$('.input-mask-phone').mask('(999) 999-9999');
				$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
				$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});
			
			
			
				$( "#input-size-slider" ).css('width','200px').slider({
					value:1,
					range: "min",
					min: 1,
					max: 8,
					step: 1,
					slide: function( event, ui ) {
						var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
						var val = parseInt(ui.value);
						$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
					}
				});
			
				$( "#input-span-slider" ).slider({
					value:1,
					range: "min",
					min: 1,
					max: 12,
					step: 1,
					slide: function( event, ui ) {
						var val = parseInt(ui.value);
						$('#form-field-5').attr('class', 'col-xs-'+val).val('.col-xs-'+val);
					}
				});
				
				
				$( "#slider-range" ).css('height','200px').slider({
					orientation: "vertical",
					range: true,
					min: 0,
					max: 100,
					values: [ 17, 67 ],
					slide: function( event, ui ) {
						var val = ui.values[$(ui.handle).index()-1]+"";
			
						if(! ui.handle.firstChild ) {
							$(ui.handle).append("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
						}
						$(ui.handle.firstChild).show().children().eq(1).text(val);
					}
				}).find('a').on('blur', function(){
					$(this.firstChild).hide();
				});
				
				$( "#slider-range-max" ).slider({
					range: "max",
					min: 1,
					max: 10,
					value: 2
				});
				
				$( "#eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
					// read initial values from markup and remove that
					var value = parseInt( $( this ).text(), 10 );
					$( this ).empty().slider({
						value: value,
						range: "min",
						animate: true
						
					});
				});
			
				
				$('#id-input-file-1 , #id-input-file-2').ace_file_input({
					no_file:'No File ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
				
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'icon-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
			
				//dynamically change allowed formats by changing before_change callback function
				$('#id-file-format').removeAttr('checked').on('change', function() {
					var before_change
					var btn_choose
					var no_icon
					if(this.checked) {
						btn_choose = "Drop images here or click to choose";
						no_icon = "icon-picture";
						before_change = function(files, dropped) {
							var allowed_files = [];
							for(var i = 0 ; i < files.length; i++) {
								var file = files[i];
								if(typeof file === "string") {
									//IE8 and browsers that don't support File Object
									if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
								}
								else {
									var type = $.trim(file.type);
									if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
											|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
										) continue;//not an image so don't keep this file
								}
								
								allowed_files.push(file);
							}
							if(allowed_files.length == 0) return false;
			
							return allowed_files;
						}
					}
					else {
						btn_choose = "Drop files here or click to choose";
						no_icon = "icon-cloud-upload";
						before_change = function(files, dropped) {
							return files;
						}
					}
					var file_input = $('#id-input-file-3');
					file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon})
					file_input.ace_file_input('reset_input');
				});
			
			
			
			
				$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
				.on('change', function(){
					//alert(this.value)
				});
				$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'icon-caret-up', icon_down:'icon-caret-down'});
				$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
			
			
				
				$('.date-picker').datepicker({autoclose:true}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				$('input[name=date-range-picker]').daterangepicker().prev().on(ace.click_event, function(){
					$(this).next().focus();
				});
				
				$('#timepicker1').timepicker({
					minuteStep: 1,
					showSeconds: true,
					showMeridian: false
				}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});	
				
				$(".knob").knob();
				
				
				//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
				var tag_input = $('#form-field-tags');
				if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) ) 
				{
					tag_input.tag(
					  {
						placeholder:tag_input.attr('placeholder'),
						//enable typeahead by specifying the source array
						source: ace.variable_US_STATES//defined in ace.js >> ace.enable_search_ahead
					  }
					);
				}
				else {
					//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
					tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
					//$('#form-field-tags').autosize({append: "\n"});
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
				/**
				//or you can activate the chosen plugin after modal is shown
				//this way select element becomes visible with dimensions and chosen works as expected
				$('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
				*/
			
			});
		</script>
</body>
</html>
