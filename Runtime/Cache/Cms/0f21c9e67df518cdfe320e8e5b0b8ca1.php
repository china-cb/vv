<?php if (!defined('THINK_PATH')) exit();?><div class="row">
	<div class="col-xs-12 col-md-12">
		<div class="widget">
			<div class="widget-header bg-blue">
				<i class="widget-icon fa fa-arrow-down"></i>
				<span class="widget-caption">自定义菜单</span>
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
					<a href="<?php echo U('Cms/Diymenu/cateSet/');?>" class="btn btn-primary" data-loader="Joel-loader" data-loadername="设置自定义菜单">
						<i class="fa fa-plus"></i>新增菜单
					</a>
					<a href="#" class="btn btn-danger" id="Joel-update">
						<i class="fa fa-delicious"></i>更新菜单
					</a>
					
					<a href="#" class="btn btn-danger" id="bb-scasstoken">
						<i class="fa fa-delicious"></i>更新微信接口缓存
					</a>
					
					<div class="pull-right">
						<form id="Joel-search">
							<label style="margin-bottom: 0px;">
								<input name="name" type="search" class="form-control input-sm">
							</label>
							<a href="<?php echo U('Cms/Diymenu/cate/');?>" class="btn btn-success" data-loader="Joel-loader" data-loadername="自定义菜单" data-search="Joel-search">
								<i class="fa fa-search"></i>搜索
							</a>
						</form>
					</div>
				</div>

				<table id="Joel-table" class="table table-bordered table-hover">
					<thead class="bordered-darkorange">
						<tr role="row">
							<th>ID</th>
							<th>层级</th>
							<th>名称</th>							
							<th>类型</th>
							<th width="200px">网址</th>
							<th>关键词</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<?php if(is_array($cache)): $i = 0; $__LIST__ = $cache;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr id="item<?php echo ($vo["id"]); ?>">
								<td class=" sorting_1"><?php echo ($vo["id"]); ?></td>
								<td class=" "><?php echo ($vo["lv"]); ?></td>
								<td class=" "><?php echo ($vo["name"]); ?></td>
								<td class=" "><?php echo ($vo["type"]); ?></td>								
								<td class=" "><?php echo ($vo["url"]); ?></td>
								<td class=" "><?php echo ($vo["keyword"]); ?></td>
								<td class="center "><a href="<?php echo U('Cms/Diymenu/cateSet/',array('id'=>$vo['id']));?>" class="btn btn-success btn-xs" data-loader="Joel-loader" data-loadername="设置自定义菜单"><i class="fa fa-edit"></i> 编辑</a><?php if(empty($vo["soncate"])): ?>&nbsp;&nbsp;<a href="＃" class="btn btn-danger btn-xs" data-type = "del" data-ajax="<?php echo U('Cms/Diymenu/cateDel/',array('id'=>$vo['id']));?>" ><i class="fa fa-trash-o"></i> 删除</a><?php endif; ?></td>
							</tr>
							<?php if(is_array($vo['_child'])): $i = 0; $__LIST__ = $vo['_child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><tr id="item<?php echo ($vo2["id"]); ?>">
									<td class=" sorting_1"><?php echo ($vo2["id"]); ?></td>
									<td class=" "><?php echo ($vo2["lv"]); ?></td>
									<td class=" ">&nbsp;&nbsp;└<?php echo ($vo2["name"]); ?></td>
									<td class=" "><?php echo ($vo2["type"]); ?></td>								
									<td class=" "><?php echo ($vo2["url"]); ?></td>
									<td class=" "><?php echo ($vo2["keyword"]); ?></td>
									<td class="center "><a href="<?php echo U('Cms/Diymenu/cateSet/',array('id'=>$vo2['id']));?>" class="btn btn-success btn-xs" data-loader="Joel-loader" data-loadername="设置自定义菜单"><i class="fa fa-edit"></i> 编辑</a><?php if(empty($vo2["soncate"])): ?>&nbsp;&nbsp;<a href="＃" class="btn btn-danger btn-xs" data-type = "del" data-ajax="<?php echo U('Cms/Diymenu/cateDel/',array('id'=>$vo2['id']));?>" ><i class="fa fa-trash-o"></i> 删除</a><?php endif; ?></td>
								</tr><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
												
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
<script type="text/javascript">
	//更新菜单
	$('#Joel-update').on('click',function(){
		
		var toajax="<?php echo U('Cms/Diymenu/update');?>";
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
		$.Joel.confirm("确认要更新菜单吗？",funok);
	});
	
	//更新菜单
	$('#bb-scasstoken').on('click',function(){
		var toajax="<?php echo U('Cms/Diymenu/scasstoken');?>";
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
		$.Joel.confirm("确认要更新菜单吗？",funok);
		
	});
	
</script>