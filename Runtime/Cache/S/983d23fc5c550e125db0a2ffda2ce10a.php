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
					<a href="#" class="btn btn-danger" disabled="disabled">
						<button href="javascript:void(0)" class="btn btn-primary" id="exportOrder"><i class="fa fa-save"></i>导出订单</button>
					</a>
					<div class="pull-right">
						<form id="Joel-search">
							<label style="margin-bottom: 0px;">
								<input name="name" type="search" class="form-control input-sm" placeholder="按会员ID搜索"> 
							</label>
							<a href="<?php echo U('S/Shop/order/');?>" class="btn btn-success" data-loader="Joel-loader" data-loadername="我的订单" data-search="Joel-search">
								<i class="fa fa-search"></i>搜索
							</a>
						</form>
					</div>
				</div>

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
									<a href="<?php echo U('S/Shop/orderDetail/',array('id'=>$vo['id'],'status'=>$status));?>" class="btn btn-primary btn-xs" data-loader="Joel-loader" data-loadername="订单详情"><i class="fa fa-eye"></i> 详情</a>
									<!--<a href="<?php echo U('S/Fxs/adsSet/',array('id'=>$vo['id']));?>" class="btn btn-success btn-xs" data-loader="Joel-loader" data-loadername="设置广告"><i class="fa fa-edit"></i> 编辑</a>&nbsp;&nbsp;-->
									<a href="<?php echo U('S/Shop/orderDel/');?>" class="btn btn-danger btn-xs" data-type = "del" data-ajax="<?php echo U('S/Shop/orderDel/',array('oid'=>$vo['oid']));?>" ><i class="fa fa-trash-o"></i> 删除</a>
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
</script>
<!--/全选特效封装-->