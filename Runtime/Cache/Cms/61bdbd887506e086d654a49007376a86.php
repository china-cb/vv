<?php if (!defined('THINK_PATH')) exit();?><div class="row">
	<div class="col-xs-12 col-md-12">
		<div class="widget">
			<div class="widget-header bg-blue">
				<i class="widget-icon fa fa-arrow-down"></i>
				<span class="widget-caption">商城订单</span>
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
					<?php if(empty($status)): ?><button href="javascript:void(0)" class="btn btn-primary" id="exportOrder"><i class="fa fa-save"></i>导出订单</button><?php endif; ?>
					<?php if(!empty($status)): ?><button href="javascript:void(0)" class="btn btn-primary" id="exportOrder"><i class="fa fa-save"></i>导出订单</button><?php endif; ?>
					<div class="pull-right">
						<form id="Joel-search">
							
							<!--<label style="margin-bottom: 0px;">
								<select name="ordercg" class="form-control input-sm">
									<option value="">选择状态</option>
									<option value="1" <?php if(($ordercg) == "1"): ?>selected<?php endif; ?>>拼团购订单</option>
									<option value="2" <?php if(($ordercg) == "2"): ?>selected<?php endif; ?>>聚友杀订单</option>
									<option value="4" <?php if(($ordercg) == "4"): ?>selected<?php endif; ?>>积分订单</option>
								</select>
							</label>-->
							<label style="margin-bottom: 0px;">
								<input name="search" type="search" class="form-control input-sm" placeholder="会员ID、会员昵称、课程名称" value="<?php echo ($name); ?>">
							</label>
							<a href="<?php echo U('Cms/Shop/order/');?>" class="btn btn-success" data-loader="Joel-loader" data-loadername="商城订单" data-search="Joel-search">
								<i class="fa fa-search"></i>搜索
							</a>
						</form>
					</div>
				</div>

				<!--<table id="Joel-table" class="table table-bordered table-hover">
					<thead class="bordered-darkorange">
						<tr role="row">
							<th width="30px"><div class="checkbox" style="margin-bottom: 0px; margin-top: 0px;">
									<label style="padding-left: 4px;"> <input type="checkbox" class="Joel-checkall colored-blue">
                                     <span class="text"></span>
									</label>                                    
                                </div></th>
							<th>ID</th>
							<th>订单号</th>
							<?php if(empty($status)): ?><th>订单状态</th><?php endif; ?>
							<th>订单总额</th>
							<th>会员ID</th>
							<th>收货姓名</th>
							<th>收货电话</th>
							<th>收货地址</th>							
							<th>邮费合计</th>
							<th>支付金额</th>
							
							<?php if(($iszt) == "1"): ?><th>提取方式</th><?php endif; ?>
							
							<th>支付方式</th>
							<th>支付时间</th>
							<th>创建时间</th>
							<th>代金券</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<?php if(is_array($cache)): $i = 0; $__LIST__ = $cache;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr id="item<?php echo ($vo["id"]); ?>">
								<td>
									<div class="checkbox" style="margin-bottom: 0px; margin-top: 0px;">
										<label style="padding-left: 4px;"> <input name="checkvalue" type="checkbox" class="colored-blue Joel-check" value="<?php echo ($vo["id"]); ?>">
	                                     <span class="text"></span>
										</label>                                    
	                                </div>
								</td>
								<td class=" sorting_1"><?php echo ($vo["id"]); ?></td>
								<td class=" "><?php echo ($vo["oid"]); ?></td>
								<?php if(empty($status)): ?><td class=" "><?php switch($vo["status"]): case "0": ?>已取消<?php break;?>
					<?php case "1": ?>未付款<?php break;?>
					<?php case "2": ?>已付款<?php break;?>
					<?php case "3": ?>已发货<?php break;?>
					<?php case "4": ?>退货中<?php break;?>
					<?php case "5": ?>已完成<?php break;?>
					<?php case "6": ?>已关闭<?php break;?>
					<?php case "7": ?>已退货<?php break; endswitch;?></td><?php endif; ?>
								<td class=" "><?php echo ($vo["totalprice"]); ?></td>
								<td class=" "><?php echo ($vo["vipid"]); ?></td>
								<td class=" "><?php echo ($vo["vipname"]); ?></td>
								<td class=" "><?php echo ($vo["vipmobile"]); ?></td>
								<td class=" "><?php echo ($vo["provtext"]); ?>-<?php echo ($vo["vipaddress"]); ?></td>
								<td class=" "><?php echo ($vo["yf"]); ?></td>
								<td class=" "><?php echo ($vo["payprice"]); ?></td>
								<?php if(($iszt) == "1"): ?><td class=" "><?php switch($vo["tqtype"]): case "ziti": ?>自提<?php break;?>
										<?php case "youji": ?>邮寄<?php break; endswitch;?></td><?php endif; ?>
								<td class=" "><?php switch($vo["paytype"]): case "money": ?>余额<?php break;?>
									<?php case "alipaywap": ?>支付宝WAP<?php break;?>
									<?php case "wxpay": ?>微信支付<?php break; endswitch;?></td>
								<td class=" "><?php if(!empty($vo["paytime"])): echo (date('Y/m/d H:i',$vo["paytime"])); else: ?>未支付<?php endif; ?></td>
								<td class=" "><?php echo (date('Y/m/d H:i',$vo["ctime"])); ?></td>
								<td class=" "><?php if(($vo["djqid"]) != ""): echo ($vo["djqid"]); else: ?>未使用<?php endif; ?></td>
								<td class="center ">
									<?php if(empty($status)): ?><a href="<?php echo U('Cms/Shop/orderDetail/',array('id'=>$vo['id'],'status'=>$status));?>" class="btn btn-primary btn-xs" data-loader="Joel-loader" data-loadername="订单详情"><i class="fa fa-eye"></i> 详情</a>
										<?php else: ?>
										<a href="<?php echo U('Cms/Shop/orderDetail/',array('id'=>$vo['id'],'status'=>$status));?>" class="btn btn-primary btn-xs" data-loader="Joel-loader" data-loadername="订单详情"><i class="fa fa-eye"></i> 详情</a>
										<?php if(($status) == "1"): ?>&nbsp;&nbsp;<button class="btn btn-azure btn-xs orderfhkd" data-id = "<?php echo ($vo["id"]); ?>"><i class="glyphicon glyphicon-tags"></i> 快递</button>
											&nbsp;&nbsp;<button class="btn btn-success btn-xs orderchange" data-id = "<?php echo ($vo["id"]); ?>"><i class="fa fa-edit"></i> 改价</button>
											&nbsp;&nbsp;<button class="btn btn-darkorange btn-xs orderclose" data-id = "<?php echo ($vo["id"]); ?>"><i class="fa fa-rub"></i> 关闭</button><?php endif; ?>
										<?php if(($status) == "2"): ?>&nbsp;&nbsp;<button class="btn btn-azure btn-xs orderfhkd" data-id = "<?php echo ($vo["id"]); ?>"><i class="glyphicon glyphicon-tags"></i> 快递</button>
											&nbsp;&nbsp;<button class="btn btn-success btn-xs orderdeliver" data-id = "<?php echo ($vo["id"]); ?>"><i class="fa fa-ambulance"></i> 发货</button>
											&nbsp;&nbsp;<button class="btn btn-darkorange btn-xs orderclose" data-id = "<?php echo ($vo["id"]); ?>"><i class="fa fa-rub"></i> 关闭</button><?php endif; ?>
										<?php if(($status) == "3"): ?>&nbsp;&nbsp;<button class="btn btn-azure btn-xs orderfhkd" data-id = "<?php echo ($vo["id"]); ?>"><i class="glyphicon glyphicon-tags"></i> 快递</button>
											&nbsp;&nbsp;<button class="btn btn-success btn-xs ordersuccess" data-id = "<?php echo ($vo["id"]); ?>"><i class="glyphicon glyphicon-ok"></i> 交易完成</button><?php endif; ?>
										<?php if(($status) == "4"): ?>&nbsp;&nbsp;<button class="btn btn-success btn-xs ordertuihuo" data-id = "<?php echo ($vo["id"]); ?>"><i class="glyphicon glyphicon-ok"></i> 完成退货</button>
											&nbsp;&nbsp;<button class="btn btn-danger btn-xs ordernoth" data-id = "<?php echo ($vo["id"]); ?>"><i class="glyphicon glyphicon-refresh"></i> 驳回退货</button><?php endif; endif; ?>
								</td>
							</tr><?php endforeach; endif; else: echo "" ;endif; ?>
												
					</tbody>
				</table>-->
				<table id="Joel-table" class="table table-bordered table-hover">
					<thead class="bordered-darkorange">
						<tr role="row">
							<th width="30px"><div class="checkbox" style="margin-bottom: 0px; margin-top: 0px;">
									<label style="padding-left: 4px;"> <input type="checkbox" class="Joel-checkall colored-blue">
                                     <span class="text"></span>
									</label>                                    
                                </div></th>
							<th>序号</th>
							<th>渠道</th>
							<th>课程名称</th>
							<th>分享会员</th>
							<th>模块</th>
							<th>价格</th>
							<th>佣金</th>
							<th>推广时间</th>
							<th>PV</th>							
							<th>UV</th>
							<th>注册数</th>
							<th>成单数</th>
							<th>销售金额</th>
							<th>创建时间</th>
							<th style="max-width:100px;word-wrap:break-word">分销页面路径</th>
							<th>二维码</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<?php if(is_array($cache)): $i = 0; $__LIST__ = $cache;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr id="item<?php echo ($vo["oid"]); ?>">
								<td >
									<div class="checkbox" style="margin-bottom: 0px; margin-top: 0px;">
										<label style="padding-left: 4px;"> <input name="checkvalue" type="checkbox" class="colored-blue Joel-check" value="<?php echo ($vo["oid"]); ?>">
	                                     <span class="text"></span>
										</label>                                    
	                                </div>
								</td>
								<td class=" sorting_1"><?php echo ($vo["oid"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["tg_qd"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["name"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["username"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["price"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["price"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["vipfx1rate"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo (date("Y/m/d",$vo["tg_time"])); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["pv"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["uv"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["pv"]); ?></td>
								<td class=" " style="max-width:5%;"><?php echo ($vo["uv"]); ?></td>
								<td class=" " style="max-width:5%;"><?php if(!empty($vo["paytime"])): echo ($vo["paytime"]); else: ?>未支付<?php endif; ?></td>
								<td class=" " style="max-width:5%;"><?php echo (date("Y/m/d H:i:s",$vo["ctime"])); ?></td>
								<td class=" " style="max-width:200px;word-wrap:break-word"><?php echo ($vo["h5_url"]); ?></td>
								<td class="center " style="max-width:5%;"><img src="<?php echo ($vo["h5_qrimg"]); ?>" height="50px" /></td>
								<td class="center " style="max-width:5%;">
									<a href="<?php echo U('Cms/Shop/orderDetail/',array('id'=>$vo['id'],'status'=>$status));?>" class="btn btn-primary btn-xs" data-loader="Joel-loader" data-loadername="订单详情"><i class="fa fa-eye"></i> 详情</a>
									<!--<a href="<?php echo U('S/Fxs/adsSet/',array('id'=>$vo['id']));?>" class="btn btn-success btn-xs" data-loader="Joel-loader" data-loadername="设置广告"><i class="fa fa-edit"></i> 编辑</a>&nbsp;&nbsp;-->
									<!--<a href="<?php echo U('Cms/Shop/orderDel/');?>" class="btn btn-danger btn-xs" style="margin-top: 5px;" data-type = "del" data-ajax="<?php echo U('S/Shop/orderDel/',array('oid'=>$vo['oid']));?>" ><i class="fa fa-trash-o"></i> 状态  </a>-->
								</td>
							</tr><?php endforeach; endif; else: echo "" ;endif; ?>
												
					</tbody>
				</table>
				<div class="row DTTTFooter">
					<?php echo ($page); ?>
				</div>
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
	//全删
	$('#Joel-delall').on('click',function(){
		var checks=$(".Joel-check:checked");
		var chk='';
		$(checks).each(function(){
			chk+=$(this).val()+',';
		});
		if(!chk){
			$.Joel.alert('danger','请选择要删除的项目！');
			return false;
		}
		var toajax="<?php echo U('Cms/Shop/orderDel');?>"+"/id/"+chk;
		var callok=function(){
			//主框架可以直接模拟点击刷新按钮
			//$('#refresh-toggler').trigger('click');
			$(JoelLoaderReloader).trigger('click');
			return false;
		};
		var callerr=function(){
			//拦截错误
			return false;
		};
		$.Joel.ajax('post',toajax,'nodata',callok,callerr);
	});
</script>
<!--/全选特效封装-->


<!--订单特效-->
<script type="text/javascript">
	//发货快递
	var btnfhkd=$('.orderfhkd');
	$(btnfhkd).on('click',function(){
			var id=$(this).data('id');
			$.ajax({
					type:"post",
					url:"<?php echo U('Cms/Shop/orderFhkd');?>",
					data:{'id':id},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "填写发货快递",
	                	className: "modal-darkorange",
	                	buttons: {
	                		   success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () {
			                        	var dtfhkd=$('#JoelOrderFahuokd').val();
			                        	var dtfhkdnum=$('#JoelOrderFahuokdnum').val();
			                        	if(!dtfhkd || !dtfhkdnum){
			                        		alert('请完整填写必添字段!');
			                        		return false;
			                        	}
			                        	var dt=$('#JoelOrderFhkd').serialize();
			                        	$.ajax({
			                        		type:"post",
			                        		url:"<?php echo U('Cms/Shop/orderFhkdSave');?>",
			                        		data:dt,
			                        		dataType:"json",
			                        		async:false,
			                        		success:function(info){
			                        			if(info['status']){
			                        				$.Joel.alert('success',info['msg']);			                        				
			                        				$('#Joel-reloader').trigger('click');
			                        			}else{
			                        				$.Joel.alert('danger',info['msg']);			                        				
			                        			}
			                        			return false;
			                        		},
			                        		error:function(xhr){
												$.Joel.alert('danger','通讯失败！请重试！');
												return false;
											}
			                        	});
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
	});
	
	var btnchange=$('.orderchange');
	$(btnchange).on('click',function(){
			var id=$(this).data('id');
			$.ajax({
					type:"post",
					url:"<?php echo U('Cms/Shop/orderChange');?>",
					data:{'id':id},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "订单改价",
	                	className: "modal-darkorange",
	                	buttons: {
	                		   success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () {
			                        	var dtprice=$('#JoelOrderChangePrice').val();
			                        	var dtadmin=$('#JoelOrderChangeAdmin').val();
			                        	var dtmsg=$('#JoelOrderChangeMsg').val();
			                        	if(!dtprice || !dtadmin || !dtmsg){
			                        		alert('请完整填写必添字段!');
			                        		return false;
			                        	}
			                        	var dt=$('#JoelOrderChange').serialize();
			                        	$.ajax({
			                        		type:"post",
			                        		url:"<?php echo U('Cms/Shop/orderChangeSave');?>",
			                        		data:dt,
			                        		dataType:"json",
			                        		async:false,
			                        		success:function(info){
			                        			if(info['status']){
			                        				$.Joel.alert('success',info['msg']);			                        				
			                        				$('#Joel-reloader').trigger('click');
			                        			}else{
			                        				$.Joel.alert('danger',info['msg']);			                        				
			                        			}
			                        			return false;
			                        		},
			                        		error:function(xhr){
												$.Joel.alert('danger','通讯失败！请重试！');
												return false;
											}
			                        	});
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
	});
	
	//订单关闭
	var btnclose=$('.orderclose');
	$(btnclose).on('click',function(){
			var id=$(this).data('id');
			$.ajax({
					type:"post",
					url:"<?php echo U('Cms/Shop/orderClose');?>",
					data:{'id':id},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "订单关闭",
	                	className: "modal-darkorange",
	                	buttons: {
	                		   success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () {
			                        	var dtadmin=$('#JoelOrderCloseAdmin').val();
			                        	var dtmsg=$('#JoelOrderCloseMsg').val();
			                        	if(!dtadmin || !dtmsg){
			                        		alert('请完整填写必添字段!');
			                        		return false;
			                        	}
			                        	var dt=$('#JoelOrderClose').serialize();
			                        	$.ajax({
			                        		type:"post",
			                        		url:"<?php echo U('Cms/Shop/orderCloseSave');?>",
			                        		data:dt,
			                        		dataType:"json",
			                        		async:false,
			                        		success:function(info){
			                        			if(info['status']){
			                        				$.Joel.alert('success',info['msg']);			                        				
			                        				$('#Joel-reloader').trigger('click');
			                        			}else{
			                        				$.Joel.alert('danger',info['msg']);			                        				
			                        			}
			                        			return false;
			                        		},
			                        		error:function(xhr){
												$.Joel.alert('danger','通讯失败！请重试！');
												return false;
											}
			                        	});
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
	});
	
	//订单发货
	var btndeliver=$('.orderdeliver');
	$(btndeliver).on('click',function(){
		var id=$(this).data('id');
		bootbox.dialog({
        	message: '是否发货？',
        	title: "提示",
        	className: "modal-darkorange",
        	buttons: {
        		   success: {
                        label: "确定",
                        className: "btn-blue",
                        callback: function () {
                        	$.ajax({
								type:"post",
								url:"<?php echo U('Cms/Shop/orderDeliver');?>",
								async:false,
								data:{'id':id},
								success:function(info){
								    if(info['status']){
								           $.Joel.alert('success',info['msg']);			                        				
								           $('#Joel-reloader').trigger('click');
								    }else{
								           $.Joel.alert('danger',info['msg']);			                        				
								         }
								         return false;
								   },
								error:function(xhr){
									$.Joel.alert('danger','通讯失败！请重试！');
									return false;
								}
							});
                        }
                   },
                    "取消": {
                        className: "btn-danger",
                        callback: function () { }
                    }
            	}
        	});
		
		
	});
	
	//退货特效
	var btntuihuo=$('.ordertuihuo');
	$(btntuihuo).on('click',function(){
			var id=$(this).data('id');
			$.ajax({
					type:"post",
					url:"<?php echo U('Cms/Shop/orderTuihuo');?>",
					data:{'id':id},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "订单退货",
	                	className: "modal-darkorange",
	                	buttons: {
	                		   success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () {
			                        	var dtprice=$('#JoelOrderTuihuoPrice').val();
			                        	var dtadmin=$('#JoelOrderTuihuoAdmin').val();
			                        	var dtmsg=$('#JoelOrderTuihuoMsg').val();
			                        	if(!dtprice || !dtadmin || !dtmsg){
			                        		alert('请完整填写必添字段!');
			                        		return false;
			                        	}
			                        	var dt=$('#JoelOrderTuihuo').serialize();
			                        	$.ajax({
			                        		type:"post",
			                        		url:"<?php echo U('Cms/Shop/orderTuihuoSave');?>",
			                        		data:dt,
			                        		dataType:"json",
			                        		async:false,
			                        		success:function(info){
			                        			if(info['status']){
			                        				$.Joel.alert('success',info['msg']);			                        				
			                        				$('#Joel-reloader').trigger('click');
			                        			}else{
			                        				$.Joel.alert('danger',info['msg']);			                        				
			                        			}
			                        			return false;
			                        		},
			                        		error:function(xhr){
												$.Joel.alert('danger','通讯失败！请重试！');
												return false;
											}
			                        	});
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
	});
	
	//驳回退货特效
	var btnnoth=$('.ordernoth');
	$(btnnoth).on('click',function(){
			var id=$(this).data('id');
			$.ajax({
					type:"post",
					url:"<?php echo U('Cms/Shop/orderNoth');?>",
					data:{'id':id},
					dataType: "json",
					//beforeSend:$.Joel.loading(),
					success:function(mb){
						//$.Joel.loading();
						bootbox.dialog({
	                	message: mb,
	                	title: "驳回退货",
	                	className: "modal-darkorange",
	                	buttons: {
	                		   success: {
			                        label: "确定",
			                        className: "btn-blue",
			                        callback: function () {
			                        	var dttt=$('#JoelOrderNothtt').val();
			                        	var dtct=$('#JoelOrderNothct').val();
			                        	if(!dttt || !dtct){
			                        		alert('请完整填写必添字段!');
			                        		return false;
			                        	}
			                        	var dt=$('#JoelOrderNoth').serialize();
			                        	$.ajax({
			                        		type:"post",
			                        		url:"<?php echo U('Cms/Shop/orderNothSave');?>",
			                        		data:dt,
			                        		dataType:"json",
			                        		async:false,
			                        		success:function(info){
			                        			if(info['status']){
			                        				$.Joel.alert('success',info['msg']);			                        				
			                        				$('#Joel-reloader').trigger('click');
			                        			}else{
			                        				$.Joel.alert('danger',info['msg']);			                        				
			                        			}
			                        			return false;
			                        		},
			                        		error:function(xhr){
												$.Joel.alert('danger','通讯失败！请重试！');
												return false;
											}
			                        	});
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
	});
	
	//订单完成
	var btnsuccess=$('.ordersuccess');
	$(btnsuccess).on('click',function(){
		var id=$(this).data('id');
		$.ajax({
			type:"post",
			url:"<?php echo U('Cms/Shop/ordersuccess');?>",
			async:false,
			data:{'id':id},
			success:function(info){
			    if(info['status']){
			           $.Joel.alert('success',info['msg']);			                        				
			           $('#Joel-reloader').trigger('click');
			    }else{
			           $.Joel.alert('danger',info['msg']);			                        				
			         }
			         return false;
			   },
			error:function(xhr){
				$.Joel.alert('danger','通讯失败！请重试！');
				return false;
			}
		});
	});
	
	//导出订单
	$('#exportOrder').on('click',function(){
		var search = '<?php echo ($name); ?>';
		var checks=$(".Joel-check:checked");
		var chk='';
		$(checks).each(function(){
			chk+=$(this).val()+',';
		});
		var url;
		if('<?php echo ($status); ?>'==''){
			url="<?php echo U('Cms/Shop/orderExport');?>/id/"+chk+"/search/"+search;
		}else{
			url="<?php echo U('Cms/Shop/orderExport');?>/status/<?php echo ($status); ?>/id/"+chk+"/search/"+search;
		}
		
		window.open(url);
	})
</script>