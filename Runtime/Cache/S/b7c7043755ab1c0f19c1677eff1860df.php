<?php if (!defined('THINK_PATH')) exit();?><div class="row">
	<div class="col-xs-12 col-md-12">
		<div class="widget">
			<div class="widget-header bg-blue">
				<i class="widget-icon fa fa-arrow-down"></i>
				<span class="widget-caption">商品管理</span>
				<div class="widget-buttons">
					<a href="#" data-toggle="maximize">
						<i class="fa fa-expand"></i>
					</a>
					<a href="#" data-toggle="collapse">
						<i class="fa fa-minus"></i>
					</a>
					<a href="#" data-toggle="dispose">
						<i class="fa fa-times"></i>
					</a>
				</div>
			</div>
			<div class="widget-body">
				<div class="table-toolbar">
					<a href="#" class="btn btn-primary" disabled>
						<i class="fa fa-plus"></i>预留按钮
					</a>
					<div class="pull-right">
						<form id="Joel-search">
							<label style="margin-bottom: 0px;">
								<input name="name" type="search" class="form-control input-sm" placeholder="按商品名称搜索">
							</label>
							<a href="<?php echo U('S/Shop/goods/');?>" class="btn btn-success" data-loader="Joel-loader" data-loadername="门店商品" data-search="Joel-search">
								<i class="fa fa-search"></i>搜索
							</a>
						</form>
					</div>
				</div>
				<div class="container">
					<!-- Team members structure start -->
					<div class="team-members row">
						<?php if(is_array($cache)): $i = 0; $__LIST__ = $cache;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="single-member effect-3">
								<div class="member-image">
									<img src="<?php echo ($vo["imgurl"]); ?>" alt="">
								</div>
								<div class="member-info">
									<span style="font-size:20px;" class="fxname"><?php echo ($vo["name"]); ?></span></br>
									分类：<span class="fxcate"><?php echo ($vo["cate_name"]); ?></span></br>
									价格：<span class="fxprice"><?php echo ($vo["price"]); ?></span>
									佣金: <span class="fxyj"><?php echo ($vo["vipfx1rate"]); ?></span>%
									<p style="margin-top:10px"><?php echo ($vo["summary"]); ?></p>
									<input type="hidden" name="fxid" value="<?php echo ($vo["id"]); ?>">

									<button type="button"  class="btn btn-primary btn-lg fb-touch addfx" data-toggle="modal" data-target="#myModal">
										加入分销
									</button>
								</div>
							</div><?php endforeach; endif; else: echo "" ;endif; ?>
					</div>
				</div>
				<div class="row DTTTFooter">
					<?php echo ($page); ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!--面包屑导航封装-->
<div id="tmpbread" style="display: none;"><?php echo ($breadhtml); ?></div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document" style="width:800px;height:800px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">加入分销</h4>
			</div>
			<div class="modal-body">
				<div class="el-dialog" >
					<div class="el-dialog__header">
						<div >
							<span  class="qd-dialog__title--main">加入分销</span><span data-v-7984a80c="" class="qd-dialog__title--sub"> 静雅课堂</span>
						</div>

					</div>
					<div class="el-dialog__body" >
						<form  class="el-form" style="width: 400px;" >
							<input type="hidden" name="goodsid" value="">
							<div  class="el-form-item el-form-item--feedback">
								<label class="el-form-item__label" style="width: 100px;">名称</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<span  id="goodsname">大白课堂</span><!---->
								</div>
							</div>
							<div  class="el-form-item el-form-item--feedback">
								<label class="el-form-item__label" style="width: 100px;">分类</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<span  id="goodscate">课程</span><!---->
								</div>
							</div>
							<div  class="el-form-item el-form-item--feedback">
								<label class="el-form-item__label" style="width: 100px;">价格</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<span  id="goodsprice">￥ 199.00</span><!---->
								</div>
							</div>
							<div  class="el-form-item el-form-item--feedback">
								<label class="el-form-item__label" style="width: 100px;">分成比例</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<span  id="goodsfc">70%</span><!---->
								</div>
							</div>
							<div  class="el-form-item el-form-item--feedback is-required">
								<label for="distributionDate" class="el-form-item__label" style="width: 100px;">推广时间</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<div  class="el-date-editor el-input el-input--prefix el-input--suffix el-date-editor--datetime">
										<!----><input type="date" id="btime" autocomplete="off" name="tg_time" style="line-height: 20px;" placeholder="选择推广时间" class="el-input__inner"><span class="el-input__prefix"><i class="el-input__icon el-icon-time"></i><!----></span><span class="el-input__suffix"><span class="el-input__suffix-inner"><i class="el-input__icon"></i><!----></span><!----></span><!---->
									</div>
									<!---->
								</div>
							</div>
							<div data-v-7984a80c="" class="el-form-item el-form-item--feedback is-required">
								<label for="remark" class="el-form-item__label" style="width: 100px;">推广渠道</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<div  class="el-input">
										<!----><input type="text" autocomplete="off" style="line-height: 24px;" name="tgqd" placeholder="请输入推广渠道" class="el-input__inner"><!----><!----><!---->
									</div>
									<!---->
								</div>
							</div>

						</form>
					</div>

				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary ajaxsubmit">提交</button>
			</div>
		</div>
	</div>
</div>


<div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<!-- <div class="el-dialog"> -->
		<div class="modal-dialog" role="document" style="margin-top:15px;background: white;width:800px;height:800px">
			<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel2">生成分销地址</h4>
			</div>
				<div class="el-dialog__body">
				<div data-v-7984a80c="" class="el-row" style="margin-left: -10px; margin-right: -10px;">
					<div data-v-7984a80c="" class="el-col el-col-10" style="padding-left: 10px; padding-right: 10px;">
						<form data-v-7984a80c="" class="el-form" style="    margin-top: 4%;">
							<div data-v-7984a80c="" class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">名称</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span id="goodsname1">静雅书院</span><!---->
								</div>
							</div>
							<div data-v-7984a80c="" class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">分类</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span id="goodscate1">书院</span><!---->
								</div>
							</div>
							<div data-v-7984a80c="" class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">价格</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span id="goodsprice1">￥ 199.00</span><!---->
								</div>
							</div>
							<div  class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">分成比例</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span id="goodsfc1">70%</span><!---->
								</div>
							</div>
							<div class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;height:40px;">分销渠道</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span id="goodsqd">默认渠道</span><!---->
								</div>
							</div>
							<div class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">分销地址</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span id="goodsurl" ></span><!---->
								</div>
							</div>
							<div  class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">微信公众号</label>
								<div class="el-form-item__content" style="margin-left: 120px;">
									<span data-v-7984a80c="" class="qd-copy">大白听课平台</span><!---->
								</div>
							</div>
							<div  class="el-form-item">
								<label class="el-form-item__label" style="width: 120px;">分销二维码</label>
								<div class="el-form-item__content" style="margin-left: 100px;">
									<img id="qr_img" src="" alt="二维码" style="font-size: 14px; color: rgb(0, 0, 255); width: 100px; height: 100px;">
									<a id="qr_aimg" href="" download="">保存图片</a><!---->
								</div>
							</div>


						</form>
					</div>

				</div>
			</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary bttype" data-dismiss="modal">完成</button>
				</div>
			</div>
		</div>

</div>
<input type="hidden" name="cue" value="" id="cue">

<script type="text/javascript">


	setBread($('#tmpbread').html());

</script>



<script>
	$(".addfx").click(function (){
	    var fxname = $(this).parents("div").children(".fxname").html();
        var fxcate = $(this).parents("div").children(".fxcate").html();
        var fxprice = $(this).parents("div").children(".fxprice").html();
        var fxyj = $(this).parents("div").children(".fxyj").html();
        var goodsid = $(this).parents("div").children("input[name='fxid']").val();
		$("#goodsname").text(fxname);
        $("#goodscate").text(fxcate);
        $("#goodsprice").text(fxprice);
        $("#goodsfc").text(fxyj);
        $("#myModal input[name='goodsid']").val(goodsid);

	})
</script>
<!--
表单提交
-->
<script>
	$(".ajaxsubmit").click(function(){
		var data = $("#myModal form").serialize();
		console.log(data);
        $.ajax({
            //请求方式
            type:'POST',
            //发送请求的地址
            url:"<?php echo U('S/shop/setusergoods');?>",
            //服务器返回的数据类型
            dataType:'json',
            //发送到服务器的数据，对象必须为key/value的格式，jquery会自动转换为字符串格式
            data:data,
            success:function(data1){
                console.log(data1);
                //var obj = ("("+eval(data1)+")");
                if(data1.msg=="ok"){
                    $("#goodsname1").text(data1.name);
                    $("#goodscate1").text(data1.cate);
                    $("#goodsprice1").text(data1.price);
                    $("#goodsfc1").text(data1.fc);
                    $("#goodsqd").text(data1.fxqd);
                    $("#goodsurl").text(data1.url);
                    $("#qr_img").attr("src",data1.qrcode);
                    $("#qr_aimg").attr("href",data1.qrcode);
                    $('#myModal').modal('hide');
					$('#myModal2').modal('show');
					
					$("#cue").val("已加入分销");


                }else if(data1.msg=="isok"){
                    $("#goodsname1").text(data1.name);
                    $("#goodscate1").text(data1.cate);
                    $("#goodsprice1").text(data1.price);
                    $("#goodsfc1").text(data1.fc);
                    $("#goodsqd").text(data1.fxqd);
                    $("#goodsurl").text(data1.url);
                    $("#qr_img").attr("src",data1.qrcode);
                    $("#qr_aimg").attr("href",data1.qrcode);
                    $('#myModal').modal('hide');
					$('#myModal2').modal('show');
					
					$("#cue").val("已更新分销");
                }else{
                	 alert("加入失败");
                    $('#myModal').modal('hide');
                }

                //请求成功函数内容
            },
            error:function(jqXHR){
                //请求失败函数内容
            }
        });
	});
</script>

<script>
	$(".bttype").click(function(){
		var msg = $("#cue").val();
		alert(msg);
	})
</script>
<!--/面包屑导航封装-->
<!--全选特效封装/全部删除-->
<script type="text/javascript">
	//全选
	var checkall=$('#Joel-table .Joel-checkall');
	var checks=$('#Joel-table .Joel-check');
	var trs=$('#Joel-table tbody tr');
	$(checkall).on('click',function(){
		if($(this).is(":checked")){			
			$(checks).prop("checked","checked");
		}else{
			$(checks).removeAttr("checked");
		}		
	});

	$(trs).on('click',function(){
		var c=$(this).find("input[type=checkbox]");
		if($(c).is(":checked")){
			$(c).removeAttr("checked");
		}else{
			$(c).prop("checked","checked");
		}		
	});
	
</script>
<!--/全选特效封装-->