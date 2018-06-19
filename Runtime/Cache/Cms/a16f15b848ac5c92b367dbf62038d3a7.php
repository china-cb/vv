<?php if (!defined('THINK_PATH')) exit();?> <!--百度编辑器-->
<link href="/Public/Cms/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/Public/Cms/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/Cms/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="/Public/Cms/umeditor/lang/zh-cn/zh-cn.js"></script>
<div class="row">
     <div class="col-xs-12 col-xs-12">
          <div class="widget radius-bordered">
              <div class="widget-header bg-blue">
				<i class="widget-icon fa fa-arrow-down"></i>
				<span class="widget-caption">商品设置</span>
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
                   <form id="JoelForm" action="" method="post" class="form-horizontal"
                                                  data-bv-message=""
                                                  data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                                                  data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                                                  data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                  <input type="hidden" name="id" value="<?php echo ($cache["id"]); ?>">
                  <div class="form-title">
                        <a href="<?php echo U('Cms/Shop/goods/',array('p'=>$p));?>" class="btn btn-primary" data-loader="Joel-loader" data-loadername="商品分组">
							<i class="fa fa-mail-reply"></i>返回
						</a>
                   </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">选择分类</label>
                        <div class="col-lg-4">
                             <select class="form-control" name="cid" >
                                  <option value="0">顶级分类</option>
                                  <?php if(is_array($cate)): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if(($vo["id"]) == $cache["cid"]): ?>selected<?php endif; ?>><?php echo ($vo["name"]); ?></option>
                                  		<?php if(is_array($vo['_child'])): $i = 0; $__LIST__ = $vo['_child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo2["id"]); ?>" <?php if(($vo2["id"]) == $cache["cid"]): ?>selected<?php endif; ?>>&nbsp;&nbsp;└<?php echo ($vo2["name"]); ?></option>
												<?php if(is_array($vo2['_child'])): foreach($vo2['_child'] as $key=>$vo3): ?><option value="<?php echo ($vo3["id"]); ?>" <?php if(($vo3["id"]) == $cache["cid"]): ?>selected<?php endif; ?>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└<?php echo ($vo3["name"]); ?></option>
													<?php if(is_array($vo3['_child'])): foreach($vo3['_child'] as $key=>$vo4): ?><option value="<?php echo ($vo4["id"]); ?>" <?php if(($vo4["id"]) == $cache["cid"]): ?>selected<?php endif; ?>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└<?php echo ($vo4["name"]); ?></option>
														<?php if(is_array($vo4['_child'])): foreach($vo4['_child'] as $key=>$vo5): ?><option value="<?php echo ($vo5["id"]); ?>" <?php if(($vo5["id"]) == $cache["cid"]): ?>selected<?php endif; ?>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└<?php echo ($vo5["name"]); ?></option><?php endforeach; endif; endforeach; endif; endforeach; endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
                             </select>

                        </div>
                   </div>
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品名称<sup>*</sup></label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="name" placeholder="必填 字数25以内"
                                                               data-bv-notempty="true"
                                                               data-bv-notempty-message="不能为空" value="<?php echo ($cache["name"]); ?>">
                        </div>
                   </div>
                   <div class="form-group">
                       <label class="col-lg-2 control-label">商品URL地址<sup>*</sup></label>
                       <div class="col-lg-4">
                           <input type="text" class="form-control" name="goods_url" placeholder="必填"
                                  data-bv-notempty="true"
                                  data-bv-notempty-message="不能为空" value="<?php echo ($cache["goods_url"]); ?>">
                       </div>
                   </div>
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品介绍<sup>*</sup></label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="introduction" placeholder="必填"
                                                               data-bv-notempty="false"
                                                               data-bv-notempty-message="不能为空" value="<?php echo ($cache["introduction"]); ?>">
                        </div>
                   </div>
				   <div class="form-group">
                        <label class="col-lg-2 control-label">商品排序</label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="sorts" placeholder="" value="<?php echo ($cache["sorts"]); ?>">
                        </div>
                   </div>
                   <!--<div class="form-group">
                        <label class="col-lg-2 control-label">首页大图片</label>
                        <div class="col-lg-4">
                        	<div class="input-group input-group-sm">
                        		<input type="text" class="form-control" name="indexpic" value="<?php echo ($cache["indexpic"]); ?>" id="Joel-indexpic" placeholder="尺寸：675*320px">
                        		<span class="input-group-btn">
                            		<button class="btn btn-default shiny" type="button" onclick="joelImgviewer('Joel-indexpic')"><i class="fa fa-camera-retro"></i>预览</button><button class="btn btn-default shiny" type="button" onclick="joelImguploader('Joel-indexpic',false)"><i class="glyphicon glyphicon-picture"></i>上传</button>
                        		</span>
                        	</div>
                        </div>
                   </div>-->
                       <!--
                   <div class="form-group">
                        <label class="col-lg-2 control-label">活动专区图片</label>
                        <div class="col-lg-4">
                        	<div class="input-group input-group-sm">
                        		<input type="text" class="form-control" name="listpic" value="<?php echo ($cache["listpic"]); ?>" id="Joel-listpic"  placeholder="尺寸：300*300px">
                        		<span class="input-group-btn">
                            		<button class="btn btn-default shiny" type="button" onclick="joelImgviewer('Joel-listpic')"><i class="fa fa-camera-retro"></i>预览</button><button class="btn btn-default shiny" type="button" onclick="joelImguploader('Joel-listpic',false)"><i class="glyphicon glyphicon-picture"></i>上传</button>
                        		</span>
                        	</div>
                        </div>
                        <label class="col-lg-0 control-label">&nbsp;尺寸：300*300px</label>
                   </div>-->
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品图片</label>
                        <div class="col-lg-4">
                        	<div class="input-group input-group-sm">
                        		<input type="text" class="form-control" name="pic" value="<?php echo ($cache["pic"]); ?>" id="Joel-pic" placeholder="尺寸：300*300px">
                        		<span class="input-group-btn">
                            		<button class="btn btn-default shiny" type="button" onclick="joelImgviewer('Joel-pic')"><i class="fa fa-camera-retro"></i>预览</button><button class="btn btn-default shiny" type="button" onclick="joelImguploader('Joel-pic',false)"><i class="glyphicon glyphicon-picture"></i>上传</button>
                        	    </span>                        		
                        	</div>
                        </div>
                        <label class="col-lg-0 control-label">&nbsp;尺寸：300*300px</label>
                   </div>
                       <!--
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品图集</label>
                        <div class="col-lg-4">
                        	<div class="input-group input-group-sm">
                        		<input type="text" class="form-control" name="album" value="<?php echo ($cache["album"]); ?>" id="Joel-album">
                        		<span class="input-group-btn">
                            		<button class="btn btn-default shiny" type="button" onclick="joelImgviewer('Joel-album')"><i class="fa fa-camera-retro"></i>预览</button><button class="btn btn-default shiny" type="button" onclick="joelImguploader('Joel-album',true)"><i class="glyphicon glyphicon-picture"></i>上传</button>
                        		</span>
                        	</div>
                        </div>
                        <label class="col-lg-0 control-label">&nbsp;尺寸：320*240px</label>
                   </div>

                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品单位<sup>*</sup></label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="unit" placeholder="" value="<?php echo ($cache["unit"]); ?>">
                        </div>
                   </div>-->
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品价格<sup>*</sup></label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="price" placeholder="必填"
                                                               data-bv-notempty="true"
                                                               data-bv-notempty-message="不能为空" value="<?php echo ($cache["price"]); ?>">
                        </div>
                   </div>
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品原价<sup>*</sup></label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="oprice" placeholder="必填"
                                                               data-bv-notempty="true"
                                                               data-bv-notempty-message="不能为空" value="<?php echo ($cache["oprice"]); ?>">
                        </div>
                   </div>

                        <input type="hidden" class="form-control" name="heavy" placeholder="必填"
                                                               data-bv-notempty="true"
                                                               data-bv-notempty-message="不能为空" value="<?php echo ($cache["heavy"]); ?>">

                        <input type="hidden" class="form-control" name="num" placeholder="必填"
                                                               data-bv-notempty="true"
                                                               data-bv-notempty-message="不能为空" value="<?php echo ($cache["num"]); ?>">



                        		  <input type="hidden" name="issku" value="<?php echo ($cache["issku"]); ?>" id="issku">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" id="isskubtn" >

                       <!--
                   <div class="form-group">
                        <label class="col-lg-2 control-label">是否免邮费</label>
                        <div class="col-lg-4">
                        	<label>
                        		  <input type="hidden" name="ismy" value="<?php echo ($cache["ismy"]); ?>" id="ismy">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" id="ismybtn" <?php if(($cache["ismy"]) == "1"): ?>checked="checked"<?php endif; ?>>
                                  <span class="text darkorange">&nbsp;&nbsp;&larr;重要：启用后纯免邮商品免邮费。</span>
                            </label>
                        </div>
                   </div>
                   <div class="form-group">
                        <label class="col-lg-2 control-label">开启自定义销量</label>
                        <div class="col-lg-4">
                        	<label>
                        		  <input type="hidden" name="issells" value="<?php echo ($cache["issells"]); ?>" id="issells">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" id="issellsbtn" <?php if(($cache["issells"]) == "1"): ?>checked="checked"<?php endif; ?>>
                                  <span class="text darkorange">&nbsp;&nbsp;&larr;重要：开启后前端显示自定义销量。</span>
                            </label>
                        </div>
                   </div>
                   <div class="form-group" id="dissells">
                        <label class="col-lg-2 control-label">自定义销量</label>
                        <div class="col-lg-4">
                        <input type="text" class="form-control" name="dissells" placeholder="填写自定义销量，此销量也会自动增长" value="<?php echo ($cache["dissells"]); ?>">
                        </div>
                   </div>
                   -->
                   <div class="form-group" <?php if(($isdfx) == "0"): ?>style="display:none"<?php endif; ?>>
                        <label class="col-lg-2 control-label">会员分销佣金</label>
				        <div class="col-lg-2">
	          				<div class="input-group input-group-xs">
	               			<span class="input-group-btn">
	                  			 <button class="btn btn-darkorange" type="button">一级(%)：</button>
	               			</span>
	               			<input name="vipfx1rate" type="text" class="form-control" value="<?php echo ($cache["vipfx1rate"]); ?>" >
	          				</div>
       					</div>

					               <input name="vipfx2rate" type="hidden" class="form-control" value="0" >
					               <input name="vipfx3rate" type="hidden" class="form-control" value="0" >

                   </div>
        			
        			<!--聚友杀  拼团购-->
       				  <!-- 作者：郑伊凡 2016-1-25 母版本 功能：聚友杀总控判断 -->
       				  <!--<?php if(($isjys) == "1"): ?><div class="form-group">
                        <label class="col-lg-2 control-label">开启砍价模式</label>
                        <div class="col-lg-4">
                        	<label>
                        		  <input type="hidden" name="iscut" value="<?php echo ($cache["iscut"]); ?>" id="iscut">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" id="iscutbtn" <?php if(($cache["iscut"]) == "1"): ?>checked="checked"<?php endif; ?>>
                                  <span class="text darkorange">&nbsp;&nbsp;&larr;重要：开启后包含此商品的订单拥有聚友杀功能。</span>
                            </label>
                        </div>
                   </div>
                   <div id="discut">
	                   <div class="form-group" id="discut">
	                        <label class="col-lg-2 control-label">最多被砍价格[元]</label>
	                        <div class="col-lg-4">
	                        <input type="text" class="form-control" name="cutmax" placeholder="此商品最多被砍多少钱,如10.38" value="<?php echo ($cache["cutmax"]); ?>">
	                        </div>
	                   </div>
	                   <div class="form-group" id="discut">
	                        <label class="col-lg-2 control-label">每刀最低价格[元]</label>
	                        <div class="col-lg-4">
	                        <input type="text" class="form-control" name="cutlow" placeholder="此商品每刀至少被砍多少钱,如1.16" value="<?php echo ($cache["cutlow"]); ?>">
	                        </div>
	                   </div>
	                   <div class="form-group" id="discut">
	                        <label class="col-lg-2 control-label">每刀最高价格[元]</label>
	                        <div class="col-lg-4">
	                        <input type="text" class="form-control" name="cuttop" placeholder="此商品每刀至多被砍多少钱,如3.67" value="<?php echo ($cache["cuttop"]); ?>">
	                        </div>
	                   </div>
                   </div>
                <?php else: ?>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">开启砍价模式</label>
                        <div class="col-lg-4">
                          <label>
                              <input type="hidden" id="iscut">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" onclick="alert('请在营销模块开启此功能！');return false;">
                                  <span class="text darkorange">&nbsp;&nbsp;&larr;重要：开启后包含此商品的订单拥有聚友杀功能。</span>
                            </label>
                        </div>
                   </div><?php endif; ?>-->
                <!-- 作者：郑伊凡 2016-1-25 母版本 功能：聚友杀总控判断 -->
                <!-- 作者：郑伊凡 2016-1-25 母版本 功能：拼团购总控判断 -->
                <!--<?php if(($isptg) == "1"): ?><div class="form-group">
                        <label class="col-lg-2 control-label">开启拼团模式</label>
                        <div class="col-lg-4">
                          <label>
                              <input type="hidden" name="isgroup" value="<?php echo ($cache["isgroup"]); ?>" id="isgroup">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" id="isgroupbtn" <?php if(($cache["isgroup"]) == "1"): ?>checked="checked"<?php endif; ?>>
                                  <span class="text darkorange">&nbsp;&nbsp;&larr;重要：开启后包含此商品的订单拥有拼团功能。</span>
                            </label>
                        </div>
                   </div>
                   <div id="disgroup">
                     <div class="form-group" id="disgroup">
                          <label class="col-lg-2 control-label">最多拼团人数[个]</label>
                          <div class="col-lg-4">
                          <input type="text" class="form-control" name="groupmax" placeholder="此商品最多拼团人数,如10" value="<?php echo ($cache["groupmax"]); ?>">
                          </div>
                     </div>
                     <div class="form-group" id="disgroup">
                          <label class="col-lg-2 control-label">拼团价格[元]</label>
                          <div class="col-lg-4">
                          <input type="text" class="form-control" name="groupprice" placeholder="此商品拼团所需价格,如16" value="<?php echo ($cache["groupprice"]); ?>">
                          </div>
                     </div>
                   </div>
                <?php else: ?>
                   <div class="form-group">
                        <label class="col-lg-2 control-label">开启拼团模式</label>
                        <div class="col-lg-4">
                          <label>
                              <input type="hidden" id="iscut">
                                  <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox" onclick="alert('请在营销模块开启此功能！');return false;">
                                  <span class="text darkorange">&nbsp;&nbsp;&larr;重要：开启后包含此商品的订单拥有拼团功能。</span>
                            </label>
                        </div>
                   </div><?php endif; ?>-->
                   <!-- 作者：郑伊凡 2016-1-25 母版本 功能：拼团购总控判断 -->
       				<!--聚友杀  拼团购-->
       				
                   <div class="form-group">
                   		<label class="col-lg-2 control-label">选择标签</label>
                   		<div class="col-lg-4">
                   			<?php if(is_array($label)): $i = 0; $__LIST__ = $label;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo_l): $mod = ($i % 2 );++$i;?><label>
						  		<input type="checkbox" class="colored-blue label-check1"   value="<?php echo ($vo_l["id"]); ?>" data-label="<?php echo ($vo_l["name"]); ?>" <?php if(in_array(($vo_l["id"]), is_array($cache["lidinfo"])?$cache["lidinfo"]:explode(',',$cache["lidinfo"]))): ?>checked="checked"<?php endif; ?>>
								<span class="text"><?php echo ($vo_l["name"]); ?>&nbsp;&nbsp;&nbsp;&nbsp;</span>
				      		</label><?php endforeach; endif; else: echo "" ;endif; ?>
			       		</div>
			       		<input type="hidden" name="lid" id="lid" value="<?php echo ($cache["lid"]); ?>" />
                   </div>
       
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品简介</label>
                        <div class="col-lg-4">
                        <textarea class="form-control" name="summary" rows="5"><?php echo ($cache["summary"]); ?></textarea>
                        </div>
                   </div>
                   <div class="form-group">
                        <label class="col-lg-2 control-label">商品详情</label>
                        <div class="col-lg-4">
                        	<!--必须插入空input避免验证冲突--> 
                        	<input type="hidden">
                    		<script type="text/plain" id="J-ueditor" name="content" style="width:800px;height:400px;"><?php echo (htmlspecialchars_decode($cache["content"])); ?></script>
                        </div>
                   </div>
						<div class="form-group">
                             <div class="col-lg-offset-2 col-lg-4">
                             <button class="btn btn-primary btn-lg" type="submit">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;
                             <button class="btn btn-palegreen btn-lg" type="reset">重填</button>
                        </div>
                    </div>
                   </form>
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
<!--编辑器封装-->
<script type="text/javascript">
	 var um = UM.getEditor('J-ueditor');
</script>
<!--/编辑器封装-->
<!--表单验证与提交封装-->
<script type="text/javascript">
	if($('#issellsbtn').prop('checked')){
		$('#dissells').slideDown();
	}else{
		$('#dissells').slideUp();
	}
	if($('#iscutbtn').prop('checked')){
		$('#discut').slideDown();
	}else{
		$('#discut').slideUp();
	}
	
    if($('#isgroupbtn').prop('checked')){
      $('#disgroup').slideDown();
    }else{
      $('#disgroup').slideUp();
    }
    
    var checks=$('.label-check');
    $(checks).click(function(){
    	$('#lid').val($(this).val());
    	$(this).parent().siblings().find('.label-check').removeAttr('checked');
    })
  
	$('#JoelForm').bootstrapValidator({
		submitHandler: function (validator, form, submitButton) {
			var lid='';
			var checks=$('.label-check1');
			var pjstr = ",";
			$(checks).each(function(){
				if($(this).is(":checked")){
					lid = lid + $(this).val() + pjstr;
				}
			});
			$('#lid').val(lid);
           	var tourl="<?php echo U('Cms/Shop/goodsSet');?>";
			var data=$('#JoelForm').serialize();
            //var data = 'id=1';
			console.log(data);

			$.Joel.ajax('post',tourl,data,null);
			return false;

        },
	});
	$('#isskubtn').on('click',function(){
		var value=$(this).prop('checked')?1:0;
		$('#issku').val(value);
	});
	$('#ismybtn').on('click',function(){
		var value=$(this).prop('checked')?1:0;
		$('#ismy').val(value);
	});
	$('#issellsbtn').on('click',function(){
		var value;
		if($(this).prop('checked')){
			value=1;
			$('#dissells').slideDown();
		}else{
			value=0;
			$('#dissells').slideUp();
		}
		$('#issells').val(value);
	});
	$('#iscutbtn').on('click',function(){
		var value;
		if($(this).prop('checked')){
			value=1;
			$('#discut').slideDown();
		}else{
			value=0;
			$('#discut').slideUp();
		}
		$('#iscut').val(value);
	});

	$('#isgroupbtn').on('click',function(){
    var value;
    if($(this).prop('checked')){
      value=1;
      $('#disgroup').slideDown();
    }else{
      value=0;
      $('#disgroup').slideUp();
    }
    $('#isgroup').val(value);
  });
</script>
<!--/表单验证与提交封装-->