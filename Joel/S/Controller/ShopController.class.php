<?php
// +----------------------------------------------------------------------
// | 用户后台基础类--CMS分组商城管理类
// +----------------------------------------------------------------------
// | JoelCMS V1.0 Beta
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.JoelCMS.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Joel <2094157689@qq.com>
// +----------------------------------------------------------------------
namespace S\Controller;
use S\Controller\BaseController;
class ShopController extends BaseController {
	
	public function _initialize() {
		//你可以在此覆盖父类方法	
		parent::_initialize();
		//初始化两个配置
		self::$S['shopset']=M('Shop_set')->find();
		self::$S['vipset']=M('Vip_set')->find();		
	}
	
	//S后台商城管理引导页
    public function index(){
    	//设置面包导航，主加载器请配置
		$bread=array(
			'0'=>array(
				'name'=>'我的商城',
				'url'=>U('S/Shop/index')
			)
		);
    	$this->display();
    }


	

    //hpf新增生成携带用户信息的html信息
    public function setusergoods()
    {

        $reg = array();
        if(IS_AJAX) {
            //post提交数据
            $info = I("post.");
            $goodsid = $info['goodsid'];
            $data['goodsid'] = $info['goodsid'];
            $data['uid'] = $_SESSION['S']['uid'];
            $data['xcx_url'] = '';
			$data['tg_time'] = empty($info['tg_time'])?date("Y-m-d H:i:s"):$info['tg_time'];
            $data['tg_qd'] = empty($info['tgqd'])?"默认渠道":$info['tgqd'];
            $savedate['tg_time'] = $data['tg_time'];
            $savedate['tg_qd'] = $data['tg_qd'];
            $goodsinfo = M("shop_goods")->where(['id'=>$goodsid])->find();
            $goodsurl = $_SERVER['HTTP_HOST'];

            $usergoodsurl = $goodsurl."/Wp/Wp/index/goodsid/".$info['goodsid']."/uid/".md5($_SESSION['S']['userid']."dabai");

            $data['h5_url'] = $usergoodsurl;
            $data['create_time'] = time();
            $res = M("user_goods")->where(["uid"=>$data['uid'],"goodsid"=>$data['goodsid']])->find();
		    
            if($res){
                M("user_goods")->where(["id"=>$res['id']])->save($savedate);
                //var_dump($savedate);
                //echo M()->getLastSql();
                $reg['msg'] = "isok";
        

                $reg['url'] = $data['h5_url'];
                $reg['name'] = $goodsinfo['name'];
                $reg['cate'] = $this->getcate($goodsinfo['cid']);
                $reg['price'] = $goodsinfo['price'];
                $reg['fc'] = $goodsinfo['vipfx1rate'];
                $reg['tg_time'] = $savedate['tg_time'];
                if(empty($res['tg_qd']) || $res['tg_qd']==""){
                    $reg['fxqd'] ="默认渠道";
                }else{
                    $reg['fxqd'] = $savedate['tg_qd'];
                }

                $reg['qrcode'] = $res['h5_qrimg'];
            }else{
                //再将携带个人信息的商品地址生成二维码图片
                $qrcodeimg = trim($this->getqrcode($usergoodsurl),".");
                $data['h5_qrimg'] = $qrcodeimg;				
                $re = M("user_goods")->data($data)->add();
                if($re){
                    $reg['msg'] = "ok";



                    $reg['url'] = $data['h5_url'];
                    $reg['name'] = $goodsinfo['name'];
                    $reg['cate'] = $this->getcate($goodsinfo['cid']);
                    $reg['price'] = $goodsinfo['price'];
                    $reg['fc'] = $goodsinfo['vipfx1rate'];
                	$reg['tg_time'] = $data['tg_time'];
                    if(empty($data['tg_qd']) || $data['tg_qd']==""){
                        $reg['fxqd'] ="默认渠道";
                    }else{
                        $reg['fxqd'] = $data['tg_qd'];
                    }

                    $reg['qrcode'] = $qrcodeimg;
                }else{
                    $reg['msg'] = "error";
                }
            }

            echo json_encode($reg);

        }
    }

    //生成二维码
    public function getqrcode($content){

        $config = array(
            'maxSize'    =>    3145728,
            'rootPath'   =>    './upload/',
            'savePath'   =>    '',
            'saveName'   =>    array('uniqid',''),
            'exts'       =>    array('jpg', 'gif', 'png', 'jpeg'),
            'autoSub'    =>    true,
            'subName'    =>    array('date','Ymd'),
        );          
        $upload = new \Think\Upload($config);// 实例化上传类
        // 上传单个文件
        $info   =   $upload->uploadOne($_FILES['test']);
        if(!$info) {// 上传错误提示错误信息
            $qrcode_path_new = './Public/S/images/code'.'_'.date("Ymdhis").'.png';
            $content = $content;
            $matrixMarginSize = 1;
            $errorCorrectionLevel = 'L';//容错级别
            $matrixPointSize = 6;//生成图片大小
            makecode_no_pic($content,$qrcode_path_new,$matrixPointSize,$matrixMarginSize,$errorCorrectionLevel);
            return $qrcode_path_new;
        }else{
            $qrcode_path = "./upload/".$info['savepath'].$info['savename'];
            $content = $content;
            $matrixMarginSize = 1;
            $errorCorrectionLevel = 'L';//容错级别
            $matrixPointSize = 6;//生成图片大小
            $url = "./upload/qrcode/".date("YmdHis").".png";
            makecode($qrcode_path,$content,$matrixPointSize,$matrixMarginSize,$errorCorrectionLevel,$url);
            return $url;
        }

    }

	//S后台商城分组
	public function goods(){
		//设置面包导航，主加载器请配置
		$bread=array(
			'0'=>array(
				'name'=>'我的商城',
				'url'=>U('S/Shop/index')
			),
			'1'=>array(
				'name'=>'商品管理',
				'url'=>U('S/Shop/goods')
			)
		);
		$this->assign('breadhtml',$this->getBread($bread));
		//绑定搜索条件与分页
		$m=M('Shop_goods');
		$p=$_GET['p']?$_GET['p']:1;
		$name=I('name')?I('name'):'';
		if($name){
			$map['name']=array('like',"%$name%");
			$this->assign('name',$name);
		}
		$psize=self::$S['set']['pagesize']?self::$S['set']['pagesize']:20;
		$cache=$m->where($map)->page($p,$psize)->select();
        foreach($cache as $k=>$v){
            $listpic=$this->getPic($v['pic']);
            $cache[$k]['imgurl']=$listpic['imgurl'];
            $cache[$k]['cate_name'] = $this->getcate($v['cid']);
        }
		$count=$m->where($map)->count();
        //dump($cache);
		$this->getPage($count, $psize, 'Joel-loader', '商品管理','Joel-search');
		$this->assign('cache',$cache);		
		$this->display();
	}
		
	
	//S后台广告分组
	public function ads(){
		//设置面包导航，主加载器请配置
		$bread=array(
			'0'=>array(
				'name'=>'我的商城',
				'url'=>U('S/Shop/index')
			),
			'1'=>array(
				'name'=>'商城广告',
				'url'=>U('S/Shop/ads')
			)
		);
		$this->assign('breadhtml',$this->getBread($bread));
		//绑定搜索条件与分页
		$m=M('Shop_ads');
		$p=$_GET['p']?$_GET['p']:1;
		$name=I('name')?I('name'):'';
		if($name){
			$map['name']=array('like',"%$name%");
			$this->assign('name',$name);
		}
		$psize=self::$S['set']['pagesize']?self::$S['set']['pagesize']:20;
		$cache=$m->where($map)->page($p,$psize)->select();
		foreach($cache as $k=>$v){
			$listpic=$this->getPic($v['pic']);
			$cache[$k]['imgurl']=$listpic['imgurl'];
		}
		$count=$m->where($map)->count();
		$this->getPage($count, $psize, 'Joel-loader', '商城广告','Joel-search');
		$this->assign('cache',$cache);		
		$this->display();
	}
	
	//S后台广告设置
	public function adsSet(){
		$id=I('id');
		$m=M('Shop_ads');
		//设置面包导航，主加载器请配置		
		$bread=array(
			'0'=>array(
				'name'=>'我的商城',
				'url'=>U('S/Shop/index')
			),
			'1'=>array(
				'name'=>'商城广告',
				'url'=>U('S/Shop/ads')
			),
			'2'=>array(
				'name'=>'广告设置',
				'url'=>$id?U('S/Shop/adsSet',array('id'=>$id)):U('S/Shop/adsSet')
			)
		);
		$this->assign('breadhtml',$this->getBread($bread));
		//处理POST提交	
		if(IS_POST){
			//die('aa');
			$data=I('post.');
			if($id){
				$re=$m->save($data);
				if(FALSE!==$re){
					$info['status']=1;
					$info['msg']='设置成功！';
				}else{
					$info['status']=0;
					$info['msg']='设置失败！';
				}
			}else{
				$re=$m->add($data);
				if($re){
					$info['status']=1;
					$info['msg']='设置成功！';
				}else{
					$info['status']=0;
					$info['msg']='设置失败！';
				}
			}
			$this->ajaxReturn($info);
		}
		//处理编辑界面
		if($id){			
			$cache=$m->where('id='.$id)->find();
			$this->assign('cache',$cache);	
		}	
		$this->display();
	}
	
	public function orderDel(){
		$oid=$_GET['oid'];//必须使用get方法	
		$m=M('user_goods');
		if(!oid){
			$info['status']=0;
			$info['msg']='ID不能为空!';
			$this->ajaxReturn($info);
		}
		$re=$m->delete($oid);
		if($re){
			$info['status']=1;
			$info['msg']='删除成功!';
		}else{
			$info['status']=0;
			$info['msg']='删除失败!';
		}
		$this->ajaxReturn($info);
	}

	


    //S后台商城订单
    public function order(){
        //设置面包导航，主加载器请配置
        $bread=array(
            '0'=>array(
                'name'=>'我的商城',
                'url'=>U('S/Shop/index')
            ),
            '1'=>array(
                'name'=>'订单管理',
                'url'=>U('S/Shop/order')
            )
        );
        $this->assign('breadhtml',$this->getBread($bread));
        $status=I('status');
        if($status || $status=='0'){
            $map['status']=$status;
        }
        $this->assign('status',$status);
        //绑定搜索条件与分页
        $m=M('user_goods');
        $p=$_GET['p']?$_GET['p']:1;
        $map['b.status']=array("eq",1);

        $psize=self::$S['set']['pagesize']?self::$S['set']['pagesize']:20;
        $cache=$m->where($map)->alias("a")->field("a.tg_qd,a.tg_time,a.create_time,h5_url,h5_qrimg,a.pv,b.*,count(c.id) as uv")->join("LEFT JOIN joel_shop_goods b on a.goodsid=b.id and a.uid=".self::$S['uid'])->join("LEFT JOIN joel_uvlog c on a.uid=c.uid and a.goodsid=c.goodsid")->where($map)->group("a.id")->page($p,$psize)->select();
        //echo $r = M()->getLastSql();
        //var_dump($cache);
       
        foreach($cache as $k=>$v){
            $listpic=$this->getPic($v['pic']);
            $cache[$k]['imgurl']=$listpic['imgurl'];
            $cache[$k]['cate_name'] = $this->getcate($v['cid']);
        }
        $count=$m->where($map)->alias("a")->field("a.tg_qd,a.tg_time,a.create_time,h5_url,h5_qrimg,a.pv,b.*,count(c.id) as uv")->join("LEFT JOIN joel_shop_goods b on a.goodsid=b.id and a.uid=".self::$S['uid'])->join("LEFT JOIN joel_uvlog c on a.uid=c.uid and a.goodsid=c.goodsid")->where($map)->group("a.id")->count();
        $this->getPage($count, $psize, 'Joel-loader', '我的课程','Joel-search');
        $this->assign('cache',$cache);

        $this->display();
    }

    //S后台Order详情
    public function orderDetail(){
        $id=I('id');
        $m=M('Shop_order');
        $mlog=M('Shop_order_log');
        //设置面包导航，主加载器请配置
        $bread=array(
            '0'=>array(
                'name'=>'我的商城',
                'url'=>U('S/Shop/index')
            ),
            '1'=>array(
                'name'=>'商城订单',
                'url'=>U('S/Shop/order')
            ),
            '2'=>array(
                'name'=>'订单详情',
                'url'=>$id?U('S/Shop/orderDetail',array('id'=>$id)):U('S/Shop/orderDetail')
            )
        );
        $this->assign('breadhtml',$this->getBread($bread));
        $cache=$m->where('id='.$id)->find();
        $cache['items']=unserialize($cache['items']);
        $log=$mlog->where('oid='.$cache['id'])->select();
        $fxlog=M('Fx_syslog')->where('oid='.$cache['id'])->select();
        $this->assign('log',$log);
        $this->assign('fxlog',$fxlog);
        $this->assign('cache',$cache);
        $this->display();
    }
	
		
	

}