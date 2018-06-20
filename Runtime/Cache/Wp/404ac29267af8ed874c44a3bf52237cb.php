<?php if (!defined('THINK_PATH')) exit();?>﻿
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta name="app-mobile-web-app-capable" content="yes">
	<meta name="app-itunes-app" content="app-id=599473996">
	<title>课程介绍</title>

	<link href="/Public/wp/css/basic.css" rel="stylesheet" />
	<link href="/Public/wp/css/style.css" rel="stylesheet" />
	<link href="/Public/wp/css/animate-custom.css" rel="stylesheet" />
	<script type="text/javascript" src="/Public/wp/js/jquery.js"></script>
	<script type="text/javascript" src="/Public/wp/js/index.js"></script>

	<style>
	.display_content img{
		width:100%;
		
	}
	</style>
</head>
<body>
<div id="wrap">
	<!-- top -->
	<div class="top">
		<a href="index.php"><img src="picture/top.jpg" width="100%"></a>
		<div class="top_phone"><a href="tel:0551-63436966"></a></div>
	</div>
	<!-- top end -->

	<!-- list -->
	<div class="list">
		<div class="list_title">
			<h3><?php echo ($goodsinfo["cate_name"]); ?></h3>

		</div>
		<div class="img" style="width:100%;position:relative;">
			<img src="<?php echo ($goodsinfo["imgurl"]); ?>" width="100%">
		</div>
		<div class="display" style="text-align: center;">
			<h3><?php echo ($goodsinfo["name"]); ?></h3>
			<div class="display_content">
				<?php echo (htmlspecialchars_decode($goodsinfo["content"])); ?>
			</div>
		</div>
	</div>
	<!-- list end -->

	<!-- foot -->
	<div style="height: 50px;"></div>
	<div class="footer" style="height:86px;">
		<ul class="clearfix">
			<li class="" style="width: 30%;
    height: 50px;
    border-radius: 31%;
    border: 1px solid white;
    text-align: center;
    display: inline-block;
    margin-left: 35%;
    margin-top: 4%;
    background: chocolate;padding-left: 0%;"><a href="<?php echo U('WeixinApi/WeixinPay/pay',array('uid'=>$uid,'goodsid'=>$goodsid));?>">立即报名</a></li>

		</ul>
	</div>
	<div class="weixin_bg">
		<div class="weixin"><img src="picture/weixin.jpg" width="200"></div>
		<div class="cha">×</div>
	</div>
	<!-- foot end -->
</div>
</body>

<script>
$(function(){
	var goodsid = '<?php echo ($goodsid); ?>';
	var uid = '<?php echo ($uid); ?>';
	$.ajax({
        //请求方式
        type:'GET',
        //发送请求的地址
        url:"<?php echo U('Wp/Wp/setuv',array('uid'=>$uid,'goodsid'=>$goodsid));?>",
      
        //发送到服务器的数据，对象必须为key/value的格式，jquery会自动转换为字符串格式
       
        success:function(data1){
           	console.log(data1);

            //请求成功函数内容
        },
        error:function(jqXHR){
            //请求失败函数内容
        }
    });

})
	

	
</script>


</html>