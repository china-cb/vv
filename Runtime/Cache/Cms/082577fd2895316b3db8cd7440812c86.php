<?php if (!defined('THINK_PATH')) exit();?><div class="row">
	<div class="col-xs-12 col-md-12">
		<div class="widget">
			<div class="widget-header bg-blue">
				<i class="widget-icon fa fa-arrow-down"></i>
				<span class="widget-caption">管理员列表</span>
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
					<a href="<?php echo U('Cms/User/userSet/');?>" class="btn btn-primary" data-loader="Joel-loader" data-loadername="设置分组">
						<i class="fa fa-plus"></i>新增管理员
					</a>
					<a href="#" class="btn btn-danger" id="Joel-delall">
						<i class="fa fa-delicious"></i>全部删除
					</a>
					<div class="pull-right">
						<!--<form id="Joel-search">
							<label style="margin-bottom: 0px;">
								<input name="name" type="search" class="form-control input-sm" value="<?php echo ($name); ?>">
							</label>
							<a href="<?php echo U('Cms/User/userList/');?>" class="btn btn-success" data-loader="Joel-loader" data-loadername="管理员列表" data-search="Joel-search">
								<i class="fa fa-search"></i>搜索
							</a>
						</form>-->
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
							<th>ID</th>
							<th>昵称</th>
							<th>登陆名</th>
							<th>权限</th>
							<th>创建时间</th>
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
								<td class=" "><?php echo ($vo["nickname"]); ?></td>
								<td class=" "><?php echo ($vo["username"]); ?></td>
								<td class=" "><?php echo ($vo["oath"]); ?></td>
								<td class=" "><?php echo ($vo["ctime"]); ?></td>
								<td class="center "><a href="<?php echo U('Cms/User/userSet/',array('id'=>$vo['id']));?>" class="btn btn-success btn-xs" data-loader="Joel-loader" data-loadername="设置管理员"><i class="fa fa-edit"></i> 编辑</a>&nbsp;&nbsp;<a href="<?php echo U('Cms/User/user/');?>" class="btn btn-danger btn-xs" data-type = "del" data-ajax="<?php echo U('Cms/User/userDel/',array('id'=>$vo['id']));?>"><i class="fa fa-trash-o"></i> 删除</a></td>
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
		var toajax="<?php echo U('Cms/User/userDel');?>"+"/id/"+chk;
		var funok=function(){
			var callok=function(){
				//成功删除后刷新
				$('#refresh-toggler').trigger('click');
				return false;
			};
			var callerr=function(){
				//拦截错误
				return false;
			};
			$.Joel.ajax('post',toajax,'nodata',callok,callerr);
		}						
		$.Joel.confirm("确认要删除吗？",funok);
	});
</script>
<!--/全选特效封装-->