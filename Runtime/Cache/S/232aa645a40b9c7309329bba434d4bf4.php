<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Head -->
<head>
    <meta charset="utf-8" />
    <title>..::<?php echo ($_SESSION["S"]["set"]["name"]); ?>::..</title>

    <meta name="description" content="blank page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="/Public/Cms/img/favicon.png" type="image/x-icon">

    <!--Basic Styles-->
    <link href="/Public/Cms/css/bootstrap.min.css" rel="stylesheet" />
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="/Public/Cms/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Public/Cms/css/weather-icons.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link id="beyond-link" href="/Public/Cms/css/beyond.min.css" rel="stylesheet" />
    <link href="/Public/Cms/css/demo.min.css" rel="stylesheet" />
    <link href="/Public/Cms/css/typicons.min.css" rel="stylesheet" />
    <link href="/Public/Cms/css/animate.min.css" rel="stylesheet" />
    <link href="/Public/Cms/css/style.css" rel="stylesheet" />
    <link id="skin-link" href="" rel="stylesheet" type="text/css" />
    <link href="/Public/Cms/css/joelcms.css" rel="stylesheet" />

    <script src="/Public/Cms/js/skins.min.js"></script>

    <style>
    	.upimgwell{margin-bottom: 0px;}
    	.clear{ clear: both;}
    	.FL{ float: left;}
    	.FR{ float: right;}
    </style>
</head>
<!-- /Head -->
<!-- Body -->
<body>
    <!-- Loading Container -->
    <div class="loading-container" id="Joel-loading-wrap">
        <div class="loading-progress" id="Joel-loading">
            <div class="rotator">
                <div class="rotator">
                    <div class="rotator colored">
                        <div class="rotator">
                            <div class="rotator colored">
                                <div class="rotator colored"></div>
                                <div class="rotator"></div>
                            </div>
                            <div class="rotator colored"></div>
                        </div>
                        <div class="rotator"></div>
                    </div>
                    <div class="rotator"></div>
                </div>
                <div class="rotator"></div>
            </div>
            <div class="rotator"></div>
        </div>
    </div>
    <!--  /Loading Container -->
    <!-- Navbar -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="navbar-container">
                <!-- Navbar Barnd -->
                <div class="navbar-header pull-left">
                    <a href="#" class="navbar-brand">
                        <small>
                            <img src="/Public/Cms/img/logo.png" alt="" />
                        </small>
                    </a>
                </div>
                <!-- /Navbar Barnd -->
                <!-- Sidebar Collapse -->
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="collapse-icon fa fa-bars"></i>
                </div>
                <!-- /Sidebar Collapse -->
                <!-- Account Area and Settings --->
                <div class="navbar-header pull-right">
                    <div class="navbar-account">
                        <ul class="account-area" >
                            
                            <li>
                                <a class="login-area dropdown-toggle" data-toggle="dropdown">
                                    <div class="avatar" title="View your public profile">
                                        <img src="/Public/Cms/img/avatars/adam-jansen.jpg">
                                    </div>
                                    <section>
                                        <h2><span class="profile"><span><?php echo ($_SESSION["SYS"]["set"]["wxname"]); echo ($_SESSION["S"]["user"]["nickname"]); ?>[ <?php echo ($_SESSION["S"]["user"]["username"]); ?> ]</span></span></h2>
                                    </section>
                                </a>
                                <!--Login Area Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                    <li class="username"><a><?php echo ($_SESSION["S"]["user"]["username"]); ?></a></li>
                                    <li class="email"><a>用户邮箱预留</a></li>
                                    <!--Avatar Area-->
                                    <li>
                                        <div class="avatar-area">
                                            <img src="/Public/Cms/img/avatars/adam-jansen.jpg" class="avatar">
                                            <span class="caption">用户头像[预留]</span>
                                        </div>
                                    </li>
                                    <!--Avatar Area-->
                                    <li class="edit">
                                        <a href="<?php echo U('S/Fxs/infoSet');?>" class="pull-right" data-loader="Joel-loader">帐户设置</a>
                                    </li>
                                    <!--Theme Selector Area-->
                                    <li class="theme-area">
                                        <ul class="colorpicker" id="skin-changer">
                                            <li><a class="colorpick-btn" href="#" style="background-color:#5DB2FF;" rel="/Public/Cms/css/skins/blue.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#2dc3e8;" rel="/Public/Cms/css/skins/azure.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#03B3B2;" rel="/Public/Cms/css/skins/teal.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#53a93f;" rel="/Public/Cms/css/skins/green.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#FF8F32;" rel="/Public/Cms/css/skins/orange.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#cc324b;" rel="/Public/Cms/css/skins/pink.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#AC193D;" rel="/Public/Cms/css/skins/darkred.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#8C0095;" rel="/Public/Cms/css/skins/purple.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#0072C6;" rel="/Public/Cms/css/skins/darkblue.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#585858;" rel="/Public/Cms/css/skins/gray.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#474544;" rel="/Public/Cms/css/skins/black.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#001940;" rel="/Public/Cms/css/skins/deepblue.min.css"></a></li>
                                        </ul>
                                    </li>
                                    <!--/Theme Selector Area-->
                                    <li class="dropdown-footer">
                                        <a href="<?php echo U('S/Public/logout');?>">
                                            注销登录
                                        </a>
                                    </li>
                                </ul>
                                <!--/Login Area Dropdown-->
                            </li>
                            <!-- /Account Area -->
                            <!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
                            <!-- Settings -->
                        </ul><div class="setting">
                            <a id="btn-setting" title="Setting" href="#">
                                <i class="icon glyphicon glyphicon-cog"></i>
                            </a>
                        </div><div class="setting-container">
                            <label>
                                <input type="checkbox" id="checkbox_fixednavbar">
                                <span class="text">固定头部</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedsidebar">
                                <span class="text">固定左导航</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedbreadcrumbs">
                                <span class="text">固定面包屑导航</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedheader">
                                <span class="text">固定全部</span>
                            </label>
                        </div>
                        <!-- Settings -->
                    </div>
                </div>
                <!-- /Account Area and Settings -->
            </div>
        </div>
    </div>
    <!-- /Navbar -->
    <!-- Main Container -->
    <div class="main-container container-fluid">
        <!-- Page Container -->
        <div class="page-container">
            <!-- Page Sidebar -->
            <div class="page-sidebar" id="sidebar">
                <!-- Page Sidebar Header-->
                <div class="sidebar-header-wrapper">
                    <input type="text" class="searchinput" />
                    <i class="searchicon fa fa-search"></i>
                    <div class="searchhelper">搜索预留，未实现</div>
                </div>
                <!-- /Page Sidebar Header -->
                <!-- Sidebar Menu -->
                <ul class="nav sidebar-menu">
                    <!--系统首页-->
                    <li>
                        <a id="JoelHome" href="<?php echo U('S/Index/main');?>" data-loader="Joel-loader" data-loadername="主控面板">
                            <i class="menu-icon glyphicon glyphicon-home"></i>
                            <span class="menu-text"> 系统首页 </span>
                        </a>
                    </li>
                    <!--分销商管理-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-sitemap"></i>
                            <span class="menu-text"> 系统设置  </span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                        	<li>
                                <a href="<?php echo U('S/Fxs/infoSet');?>" data-loader="Joel-loader" data-loadername="用户设置">
                                    <span class="menu-text">用户设置</span>
                                </a>
                            </li>
                            <!--<li>
                                <a href="https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=<?php echo ($_SESSION['S']['user']['qrticket']); ?>" target="_blank">
                                    <span class="menu-text">我的二维码</span>
                                </a>
                            </li>-->
                        	<!--<?php if(($_SESSION['S']['user']['lv']) != "4"): ?><li>
                                <a href="<?php echo U('S/Fxs/user');?>" data-loader="Joel-loader" data-loadername="分销管理">
                                    <span class="menu-text">我的分享</span>
                                </a>
                            </li><?php endif; ?>-->
                        </ul>
                    </li>
                    <!--
                    	作者：cafan@126.com
                    	时间：2018-05-15
                    	描述：结算和提现
                    -->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-sitemap"></i>
                            <span class="menu-text"> 结算和提现 </span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="<?php echo U('S/Fxs/zc');?>" data-loader="Joel-loader" data-loadername="分销商管理">
                                    <span class="menu-text">我的资产</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo U('S/Fxs/yj');?>" data-loader="Joel-loader" data-loadername="分销商管理">
                                    <span class="menu-text">资产明细</span>
                                </a>
                            </li>                            
                            <li>
                            	<a href="#" class="menu-dropdown">
		                            <span class="menu-text">我的提现</span>
		                            <i class="menu-expand"></i>
                        		</a>
                        		<ul class="submenu">
                                		<li>
                                		<a href="<?php echo U('S/Fxs/txorder',array('status'=>'1'));?>" data-loader="Joel-loader" data-loadername="提现订单管理-新订单">
	                                    	<i class="glyphicon glyphicon-usd"></i>
	                                    	<span class="menu-text">提现申请</span>
                                		</a>
                                		</li>
                                		<li>
                                		<a href="<?php echo U('S/Fxs/txorder',array('status'=>'2'));?>" data-loader="Joel-loader" data-loadername="提现订单管理-提现完成">
	                                    	<i class="glyphicon glyphicon-ok"></i>
	                                    	<span class="menu-text">提现完成</span>
                                		</a>
                                		</li>
                                		<li>
                                		<a href="<?php echo U('S/Fxs/txorder',array('status'=>'0'));?>" data-loader="Joel-loader" data-loadername="提现订单管理-提现取消">
	                                    	<i class="glyphicon glyphicon-remove"></i>
	                                    	<span class="menu-text">提现取消</span>
                                		</a>
                                		</li>
                               	</ul>
                          </li>
                        </ul>
                    </li>                    
                    <!--会员中心-->
                    <!--<li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-user"></i>
                            <span class="menu-text"> 我的分销 </span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="<?php echo U('S/Vip/vipList');?>" data-loader="Joel-loader" data-loadername="会员列表">
                                    <span class="menu-text">分销列表</span>
                                </a>
                            </li>
                           
                        </ul>
                    </li>-->
                    
                    <!--商城设置-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon glyphicon glyphicon-shopping-cart"></i>
                            <span class="menu-text"> 课程管理 </span>
                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <!--
                        	<li>
                                <a href="<?php echo U('S/Fxs/ads');?>" data-loader="Joel-loader" data-loadername="商城广告">
                                    <span class="menu-text">我的课程</span>
                                </a>
                            </li>
                            -->
                            <li>
                                <a href="<?php echo U('S/shop/order');?>" data-loader="Joel-loader" data-loadername="我的课程">
                                    <span class="menu-text">我的课程</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo U('S/Shop/goods');?>" data-loader="Joel-loader" data-loadername="商品管理">
                                    <span class="menu-text">课程列表</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /Sidebar Menu -->
            </div>
            <!-- /Page Sidebar -->
            <!-- Page Content -->
            <div class="page-content">
                <!-- Page Breadcrumb -->
                <div class="page-breadcrumbs">
                    <ul class="breadcrumb" id="Joel-bread">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="<?php echo U('S/Index/main');?>" data-loader = "Joel-loader" data-loadername="主控面板">首页</a>
                        </li>
                        <li class="active">主控面板</li>
                    </ul>
                </div>
                <!-- /Page Breadcrumb -->
                <!-- Page Header -->
                <div class="page-header position-relative">
                    <div class="header-title">
                        <h1 id="Joel-loader-title">
                            	主控面板
                        </h1>
                    </div>
                    <!--Header Buttons-->
                    <div class="header-buttons">
                        <a class="sidebar-toggler" href="#">
                            <i class="fa fa-arrows-h"></i>
                        </a>
                        <a class="refresh" id="refresh-toggler" href="<?php echo U('S/Index/mian');?>" data-loader = "Joel-loader" data-name = "主控面板">
                            <i class="glyphicon glyphicon-refresh"></i>
                        </a>
                        <a class="fullscreen" id="fullscreen-toggler" href="#">
                            <i class="glyphicon glyphicon-fullscreen"></i>
                        </a>
                    </div>
                    <!--Header Buttons End-->
                </div>
                <!-- /Page Header -->
                <!-- Page Body -->
                <div id="Joel-loader" class="page-body">
                    <!-- 主加载器 -->
                </div>
                <!--图片库-->
               
                <!-- /Page Body -->
            </div>
            <!-- /Page Content -->
        </div>
        <!-- /Page Container -->
        <!-- Main Container -->
		
    </div>
    <!--全局隐藏控件-->
    <div class="hide">
    	 <!--JoelReloader-->
    	 <a id="Joel-reloader" href="#">JOELRELOADER</a>
    	 <!--单图片上传控件-->
    	 <iframe style="display:none" name='doupimg_frame' id="doupimg_frame"></iframe> 
   		 <form enctype="multipart/form-data" action="<?php echo U('Cms/Upload/doupimg');?>" method="post" id="Joel-form-upimg" target="doupimg_frame" >
		 	<input type="file" id="jupimg" name="jupimg" accept="image/*">
	 	 </form>
    </div>
   

    <!--基础脚本-->
    <script src="/Public/Cms/js/jquery-2.0.3.min.js"></script>
    <script src="/Public/Cms/js/bootstrap.min.js"></script>
    <script src="/Public/Cms/js/beyond.min.js"></script>
    <script src="/Public/Cms/js/toastr/toastr.js"></script>
    <script src="/Public/Cms/js/validation/bootstrapValidator.js"></script>
    <script src="/Public/Cms/js/bootbox/bootbox.js"></script>
    <!--统计脚本-->
    <script src="/Public/Cms/js/charts/easypiechart/jquery.easypiechart.js"></script>
    <script src="/Public/Cms/js/charts/easypiechart/easypiechart-init.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.orderBars.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.tooltip.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.resize.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.selection.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.crosshair.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.stack.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.time.js"></script>
    <script src="/Public/Cms/js/charts/flot/jquery.flot.pie.js"></script>
    <script src="/Public/Cms/js/charts/chartjs/Chart.js"></script>
    <!--百度编辑器-->
    <script src="/Public/Cms/ueditor/ueditor.config.js"></script>
	<script src="/Public/Cms/ueditor/ueditor.all.min.js"></script>
    <!--百度地图类库-->
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=oOC9YM1VwjGkdsn7oLElg8vF"></script>
	<!--Joel全局API-->
    <script src="/Public/Cms/js/joelapi.js"></script>

	<script type="text/javascript">
		var JoelLoaderTitle=$('#Joel-loader-title');
		var JoelLoaderRefresh=$('#refresh-toggler');
		var JoelLoaderReloader=$('#Joel-reloader');
		var JoelSbLi=$('.sidebar-menu li');
		//主导航高亮
		var JoelSideli=$('.submenu li');
		//公共设置HTML内容方法
		function setHtml(id,html){
			$(id).html(html);
		}
		
		//初始化主框架加载后的操作
		function initFrame(){
			var JoelLoaderTitle=$('#Joel-loader-title');
			var JoelLoaderRefresh=$('#refresh-toggler');
			var JoelLoaderReloader=$('#Joel-reloader');
			//处理Frame加载后的所有链接
			var links=$('a');
			$(links).on('click',function(){
				
				//$(JoelSideli).removeClass('active');				
				var loader=$(this).data('loader');
				var tourl=$(this).attr('href');
				var name=$(this).data('loadername');
				$(JoelLoaderReloader).attr('href',tourl).data('loader',loader).data('loadername',name);
				if(loader){		
					//高亮主导航
					var li=$(this).parent('li');
					//$(li).siblings().removeClass('active');
					$(JoelSbLi).removeClass('active');
					$(li).addClass('active');
					//如果是主Loader
					if(loader=='Joel-loader'){
						setHtml(JoelLoaderTitle,name);
						$(JoelLoaderRefresh).attr('href',tourl).data('loader','Joel-loader').data('loadername',name);
						
					}
					$('#'+loader).empty().load(tourl,function(){
						initLoader(loader);
					});					
					return false;
				}
			});
		}
		//初始化Loader加载后的操作
		function initLoader(loader){
			//加载Widget特效
			InitiateWidgets();
			//处理Loader加载后的所有链接
			var loaderlinks=$('#'+loader+' a');
			$(loaderlinks).on('click',function(){
				var loader=$(this).data('loader');
				var tourl=$(this).attr('href');
				var search=$(this).data('search');
				var name=$(this).data('loadername');
				//特殊按钮特效--全部阻止
				var type=$(this).data('type');
				
				if(type){
					switch(type){
						case 'del':
						var toajax=$(this).data('ajax');
						var funok=function(){
							var callok=function(){
								//成功删除后刷新
								$(JoelLoaderReloader).trigger('click');
								return false;
							};
							var callerr=function(){
							//拦截错误
							return false;
							};
							$.Joel.ajax('post',toajax,'nodata',callok,callerr);
						}						
						$.Joel.confirm("确认要删除吗？",funok);
						return false;
						//
						break;
						default:
						$.Joel.alert('danger','此Type属性系统未定义！');
						break;
					}
					
				}else{
					//不存在特殊效果时，绑定Reloader刷新地址
					$(JoelLoaderReloader).attr('href',tourl).data('loader',loader).data('loadername',name).data('search',search);
				}
				
				if(loader){
					//如果是主Loader
					if(loader=='Joel-loader'){
						setHtml(JoelLoaderTitle,name);
						$(JoelLoaderRefresh).attr('href',tourl).data('loader','Joel-loader').data('loadername',name);
					}
					//如果有搜索条件绑定
					if(search){
						var sv=$('#'+search).serialize();
						if(sv){
							tourl=tourl+'?'+sv;
						}
					}
					$('#'+loader).empty().load(tourl,function(){
						initLoader(loader);
					});					
					return false;
				}
			});
			
		}
		//公共设置面包屑导航
		function setBread(html){
			$('#Joel-bread').empty().html(html);
			$('#Joel-bread a').on('click',function(){
				var loader=$(this).data('loader');
				var name=$(this).data('loadername');
				var tourl=$(this).attr('href');
				setHtml(JoelLoaderTitle,name);
				$(JoelLoaderRefresh).attr('href',tourl).data('loader','Joel-loader').data('loadername',name);
				$('#'+loader).empty().load(tourl,function(){
						initLoader(loader);
				});					
				return false;
			});
		}
		
		//Joel默认图片上传管理器
		function joelImguploader(fbid,isall){
			//fbid 查找带回的文本框ID,全局唯一
			//isall 多图,单图模式
			$.ajax({
					type:"post",
					url:"<?php echo U('Cms/Upload/indeximg');?>",
					data:{'fbid':fbid,'isall':isall},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "图片上传管理器",
	                	className: "modal-darkorange",
	                	buttons: {
	                		   "追加": {
			                        className: "btn-success",
			                        callback: function () {if(isall=='false'){$('#'+fbid).val($('#Joel-uploader-findback').val());}else{$('#'+fbid).val($('#'+fbid).val()+$('#Joel-uploader-findback').val());}}
			                    },
			                    "替换": {
			                        className: "btn-blue",
			                        callback: function () {$('#'+fbid).val($('#Joel-uploader-findback').val());}
			                    },
			                    "取消": {
			                        className: "btn-danger",
			                        callback: function () { }
			                    }
		                	}
		            	});
					},
					error:function(xhr){
						$.Joel.alert('danger','通讯失败！请重试！');
					}
			});
			return false;
		}
		//Joel默认图片预览器
		function joelImgviewer(fbid){
			//fbid 查找带回的文本框ID,全局唯一
			//isall 多图,单图模式
			var ids=$('#'+fbid).val();
			if(!ids){
				$.Joel.alert('danger','您还没有图片可以预览！');
				return false;
			}
			$.ajax({
					type:"post",
					url:"<?php echo U('S/Index/joelImgviewer');?>",
					data:{'ids':ids},
					dataType: "json",
					success:function(mb){
						bootbox.dialog({
	                	message: mb,
	                	title: "图片预览器",
	                	className: "modal-darkorange",
	                	buttons: {
			                    success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () { }
			                    },
			                    "取消": {
			                        className: "btn-danger",
			                        callback: function () { }
			                    }
		                	}
		            	});
					},
					error:function(xhr){
						$.Joel.alert('danger','通讯失败！请重试！');
					}
			});
			return false;
		}
		//Joel默认百度地图控件
		function baiduDitu(fbaddid,fblngid,fblatid){
			var fbadd=$('#'+fbaddid);
			var fblng=$('#'+fblngid);
			var fblat=$('#'+fblatid);
			if(!fbadd || !fblng || !fblat){
				$.Joel.alert('danger','回调控件不完整!');
			}
			//fbid 查找带回的文本框ID,全局唯一		
			$.ajax({
					type:"post",
					url:"<?php echo U('S/Public/baiduDitu');?>",
					data:{'address':$(fbadd).val(),'lng':$(fblng).val(),'lat':$(fblat).val()},
					dataType: "json",
					success:function(mb){
						bootbox.dialog({
	                	message: mb,
	                	title: "百度地图控件",
	                	className: "modal-darkorange",
	                	buttons: {
			                    success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () { 
			                        	$(fbadd).val($('#baiduDituaddress').val());
			                        	$(fblng).val($('#baiduDitulng').val());
			                        	$(fblat).val($('#baiduDitulat').val());
			                        }
			                    },
			                    "取消": {
			                        className: "btn-danger",
			                        callback: function () { }
			                    }
		                	}
		            	});
					},
					error:function(xhr){
						$.Joel.alert('danger','通讯失败！请重试！');
					}
			});
			return false;
		}
		//Joel默认SKU管理器
		function joelSkuloader(ids,fbid){
			//ids  已选择的属性
			//fbid 查找带回的文本框ID,全局唯一
			$.ajax({
					type:"post",
					url:"<?php echo U('S/Shop/skuLoader');?>",
					data:{'ids':ids,'fbid':fbid},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "商品Sku管理器",
	                	className: "modal-darkorange",
	                	buttons: {
			                    "取消": {
			                        className: "btn-danger",
			                        callback: function () { }
			                    }
		                	}
		            	});
					},
					error:function(xhr){
						$.Joel.alert('danger','通讯失败！请重试！');
					}
			});
			return false;
		}
		$(document).ready(function(){
			initFrame();
			$('#JoelHome').trigger('click');
		
		});
	</script>
</body>
<!--  /Body -->
</html>