<?php if (!defined('THINK_PATH')) exit();?><div class="row">
	<div class="col-lg-4 col-sm-6 col-xs-12">
		<div class="databox databox-lg radius-bordered databox-shadowed databox-graded">
			<div style="padding:15px;border-radius: 50%;width:18%;margin:2% 0 0 10px;background-color:#2dc3e8;float:left;">
				<a href="#">
					<img src="/Public/Cms/img/hy.png" width="100%">
				</a>
			</div>
			<!--<div style="border:1px solid;width:70%;float:left;"><p>订单：<?php echo ($ordertotal); ?></p></div>-->
			<!--<div class="databox-left bg-azure">
				<div class="databox-piechart">
					<div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="<?php echo ($newviptotalrate); ?>" data-animate="500" data-linewidth="3" data-size="60" data-trackcolor="#7fe2fa"><span class="white font-90"><?php echo ($newviptotalrate); ?>%</span>
					</div>
				</div>
			</div>-->
			<div class="databox-right" style="width:78%;float:left;">
				<span class="databox-number azure">渠道会员：&nbsp;&nbsp;<?php echo ($viptotal); ?>人</span>
				<!--<div class="databox-text darkgray">新增会员</div>-->
				<!--<div class="databox-stat bg-azure radius-bordered">
					<div class="stat-text">环比：<?php echo ($newviprate); ?>%</div>
					<?php if(($newviprate) > "0"): ?><i class="stat-icon fa fa-arrow-up"></i>
					<?php else: ?>
					<i class="stat-icon fa fa-arrow-down"></i><?php endif; ?>
				</div>-->
			</div>
		</div>
		<div class="databox databox-xlg radius-bordered databox-shadowed databox-vertical">
			<div class="databox-top bg-blue">
				<span class="databox-header">渠道会员分布【总数：<?php echo ($viptotal); ?>人】</span>
			</div>
			<div class="databox-bottom bg-white no-padding" style=" height: 230px;">
				<div id="vip-chart" class="chart chart"></div>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-sm-6 col-xs-12">
		<div class="databox databox-lg radius-bordered databox-shadowed databox-graded">
			<div style="padding:15px;border-radius: 50%;width:18%;margin:2% 0 0 10px;background-color:#fb6e52;float:left;">
				<a href="#">
					<img src="/Public/Cms/img/gouwu.png" width="100%">
				</a>
			</div>
			<!--<div class="databox-left bg-orange">
				<div class="databox-piechart">
					<div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="<?php echo ($newordertotalrate); ?>" data-animate="500" data-linewidth="3" data-size="60" data-trackcolor="#fa8872"><span class="white font-90"><?php echo ($newordertotalrate); ?>%</span>
					</div>
				</div>
			</div>-->
			<div class="databox-right" style="width:78%;float:left;">
				<span class="databox-number azure">渠道订单：&nbsp;&nbsp;<?php echo ($ordertotal); ?></span>
				<!--<div class="databox-text darkgray">新增订单</div>-->
				<!--<div class="databox-stat bg-orange radius-bordered">
					<div class="stat-text">环比：<?php echo ($neworderrate); ?>%</div>
					<?php if(($neworderrate) > "0"): ?><i class="stat-icon fa fa-arrow-up"></i>
					<?php else: ?>
					<i class="stat-icon fa fa-arrow-down"></i><?php endif; ?>
				</div>-->
			</div>
		</div>
		<div class="databox databox-xlg radius-bordered databox-shadowed databox-vertical">
			<div class="databox-top bg-orange">
				<span class="databox-header">渠道订单分布【总数：<?php echo ($ordertotal); ?>个】</span>
			</div>
			<div class="databox-bottom bg-white no-padding" style=" height: 230px;">
				<div id="order-chart" class="chart chart"></div>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-sm-6 col-xs-12">
		<div class="databox databox-lg radius-bordered databox-shadowed databox-graded">
			<div style="padding:15px;border-radius: 50%;width:17%;margin:2% 0 0 10px;background-color:#a0d468;float:left;">
				<a href="#" >
					<img src="/Public/Cms/img/tx.png" width="100%">
				</a>
			</div>
			<!--<div class="databox-left bg-palegreen">
				<div class="databox-piechart">
					<div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="<?php echo ($yjtotalrate); ?>" data-animate="500" data-linewidth="3" data-size="60" data-trackcolor="#aadc95"><span class="white font-90"><?php echo ($yjtotalrate); ?>%</span>
					</div>
				</div>
			</div>-->
			<div class="databox-right" style="width:78%;float:left;">
				<span class="databox-number azure">资产与提现：&nbsp;&nbsp;<?php echo ($fxstotal); ?></span>
				<!--<div class="databox-text darkgray">新增佣金</div>-->
				<!--<div class="databox-stat bg-palegreen radius-bordered">
					<div class="stat-text">环比：<?php echo ($yjrate); ?>%</div>
					<?php if(($yjrate) > "0"): ?><i class="stat-icon fa fa-arrow-up"></i>
					<?php else: ?>
					<i class="stat-icon fa fa-arrow-down"></i><?php endif; ?>
				</div>-->
			</div>
		</div>
		<div class="databox databox-xlg radius-bordered databox-shadowed databox-vertical">
			<div class="databox-top bg-palegreen">
				<span class="databox-header">资产与提现</span>
			</div>
			<div class="databox-bottom bg-white no-padding" style=" height: 230px;">
				<div id="fx-chart" class="chart chart"></div>
			</div>
		</div>
	</div>
</div>

<!--面包屑导航封装-->
<div id="tmpbread" style="display: none;"><?php echo ($breadhtml); ?></div>
<script type="text/javascript">
	setBread($('#tmpbread').html());
</script>
<!--/面包屑导航封装-->
<!--图表特性封装-->
<script type="text/javascript">
	InitiateEasyPieChart.init();
</script>
<!--图表逻辑-->
<script type="text/javascript">
 			themeprimary = getThemeColorFromCss('themeprimary');
            themesecondary = getThemeColorFromCss('themesecondary');
            themethirdcolor = getThemeColorFromCss('themethirdcolor');
            themefourthcolor = getThemeColorFromCss('themefourthcolor');
            themefifthcolor = getThemeColorFromCss('themefifthcolor');
            themesixthcolor = '#AC193D';
            themeseventhcolor = '#001940';
    
    function labelFormatter(label, series) {
        return "<div style='font-size:8pt; text-align:center; padding:2px; color:white;'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
    }     
	//会员
	var vip1="<?php echo ($vipsub); ?>";//已关注
	var vip2="<?php echo ($vipdissub); ?>";//未关注
	var vipwrap = $("#vip-chart");
	var vipdata = [
            	{ label: "已关注", data: [[1, vip1]], color: themefifthcolor },
            	{ label: "未关注", data: [[1, vip2]], color: themeprimary }
     ];
     
      $.plot(vipwrap, vipdata, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            tilt: 0.5,
                            label: {
                                show: true,
                                radius: 1,
                                formatter: labelFormatter,
                                background: {
                                    opacity: 0.8
                                }
                            },
                            combine: {
                                color: "#999",
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
       });
    //订单分布
    var order0="<?php echo ($order0); ?>";//已取消
	var order1="<?php echo ($order1); ?>";//未付款
	var order2="<?php echo ($order2); ?>";//已付款
	var order3="<?php echo ($order3); ?>";//已发货
	var order4="<?php echo ($order4); ?>";//待收货
	var order5="<?php echo ($order5); ?>";//交易完成
	var order6="<?php echo ($order6); ?>";//交易关闭
	var orderwrap = $("#order-chart");
	var orderdata = [
            	{ label: "已取消", data: [[1, order0]], color: themeprimary },
            	{ label: "未付款", data: [[1, order1]], color: themesecondary },
            	{ label: "已付款", data: [[1, order2]], color: themethirdcolor },
            	{ label: "已发货", data: [[1, order3]], color: themefourthcolor },
            	{ label: "待收货", data: [[1, order4]], color: themefifthcolor },
            	{ label: "交易完成", data: [[1, order5]], color: themesixthcolor },
            	{ label: "交易关闭", data: [[1, order6]], color: themeseventhcolor }
     ];
     
      $.plot(orderwrap, orderdata, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            tilt: 0.5,
                            label: {
                                show: true,
                                radius: 1,
                                formatter: labelFormatter,
                                background: {
                                    opacity: 0.8
                                }
                            },
                            combine: {
                                color: "#999",
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
       });
      
      //分销分布
    var fx1="<?php echo ($nowmoney); ?>";//余额
	var fx2="<?php echo ($txtotal); ?>";//累计提现
	var fxwrap = $("#fx-chart");
	var fxdata = [
            	{ label: "帐户余额:"+fx1, data: [[1, fx1]], color: themeprimary },
            	{ label: "已提现:"+fx2, data: [[1, fx2]], color: themesecondary }
     ];
     
      $.plot(fxwrap, fxdata, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            tilt: 0.5,
                            label: {
                                show: true,
                                radius: 1,
                                formatter: labelFormatter,
                                background: {
                                    opacity: 0.8
                                }
                            },
                            combine: {
                                color: "#999",
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
       });
</script>