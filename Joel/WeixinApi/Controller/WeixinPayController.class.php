<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/6/5
 * Time: 21:46
 */

namespace WeixinApi\Controller;
use think\Controller;

class WeixinPayController extends Controller
{

	
	//微信统一下单
	public function pay(){  

		$uid = I("get.uid");
        $goodsid = I("get.goodsid");
       
        //查询数据库中是否存在加密后的用户id
        $sql = "SELECT  md5(CONCAT(uid, 'dabai')) AS newuid,uid FROM joel_user_goods WHERE goodsid = ".I('get.goodsid')." AND md5(CONCAT(uid, 'dabai')) = '".I("get.uid")."'";
        $info = M()->query($sql);
		//echo $lsql = M()->getLastsql(); 
        if(empty($info)){
        	$this->error("该商品课程不存在");
        }
        $map['id'] = $goodsid;
        $goodsinfo = M("shop_goods")->where($map)->find();
        $listpic=$this->getPic($goodsinfo['pic']);
        $goodsinfo['imgurl']=$listpic['imgurl'];
        $goodsinfo['cate_name'] = $this->getcate($goodsinfo['cid']);
        $this->assign("goodsinfo",$goodsinfo);
        $this->assign("goodsid",I('goodsid'));
        $this->assign("uid",$uid);

        $openId = '';
        $goods = M("shop_goods")->where(["id"=>$goodsid])->getfield("name");
        $order_sn = '订单'.date("YmdHis").time().rand(100,999);  
        $price =  M("shop_goods")->where(["id"=>$goodsid])->getfield("price");
        $total_fee = intval($price*100);
        $attach = $goodsid."/".$uid;

	    
	     
	    $jsApiParameters = wxpay($openId,$goods,$order_sn,$total_fee,$attach);
	    //var_dump($jsApiParameters);
	    $this->assign('data',$jsApiParameters);  
	    $this->display();  
	}  

	//微信支付回调页面

	public function notify()
	{
		 $xml = $GLOBALS['HTTP_RAW_POST_DATA'];  
      
	    // 这句file_put_contents是用来查看服务器返回的XML数据 测试完可以删除了  
	    file_put_contents('./Api/wxpay/logs/log.txt',$xml,FILE_APPEND);  
	      
	    //将服务器返回的XML数据转化为数组  
	    //$data = json_decode(json_encode(simplexml_load_string($xml,'SimpleXMLElement',LIBXML_NOCDATA)),true);  
	    $data = xmlToArray($xml);  
	    // 保存微信服务器返回的签名sign  
	    $data_sign = $data['sign'];  
	    // sign不参与签名算法  
	    unset($data['sign']);  
	    $sign = $this->makeSign($data);  
	      
	    // 判断签名是否正确  判断支付状态  
	    if ( ($sign===$data_sign) && ($data['return_code']=='SUCCESS') && ($data['result_code']=='SUCCESS') ) {  
	        $result = $data;  
	        // 这句file_put_contents是用来查看服务器返回的XML数据 测试完可以删除了  
	        file_put_contents('./Api/wxpay/logs/log1.txt',$xml,FILE_APPEND);  
	          
	        //获取服务器返回的数据  
	        $order_sn = $data['out_trade_no'];  //订单单号  
	        $order_id = $data['attach'];        //附加参数,选择传递订单ID   
	        $openid = $data['openid'];          //付款人openID  
	        $total_fee = $data['total_fee'];    //付款金额  
	         
	        
	        
	        //相应逻辑数据库操作 
	         

	    }else{  
	        $result = false;  
	    }  
	    // 返回状态给微信服务器  
	    if ($result) {  
	        $str='<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>';  
	    }else{  
	        $str='<xml><return_code><![CDATA[FAIL]]></return_code><return_msg><![CDATA[签名失败]]></return_msg></xml>';  
	    }  
	    echo $str;  
	    return $result; 
	}


	/** 
	* 生成签名 
	* @return 签名，本函数不覆盖sign成员变量 
	*/  
	protected function makeSign($data){  
	    //获取微信支付秘钥  
	    require_once APP_ROOT."/Api/wxpay/lib/WxPay.Api.php";  
	    $key = \WxPayConfig::KEY;  
	    // 去空  
	    $data=array_filter($data);  
	    //签名步骤一：按字典序排序参数  
	    ksort($data);  
	    $string_a=http_build_query($data);  
	    $string_a=urldecode($string_a);  
	    //签名步骤二：在string后加入KEY  
	    //$config=$this->config;  
	    $string_sign_temp=$string_a."&key=".$key;  
	    //签名步骤三：MD5加密  
	    $sign = md5($string_sign_temp);  
	    // 签名步骤四：所有字符转为大写  
	    $result=strtoupper($sign);  
	    return $result;  
	}  

	 //获取单张图片
    public function getPic($id){
        $m=M('Upload_img');
        $map['id']=$id;
        $list=$m->where($map)->find();
        if($list){
            $list['imgurl']="/upload/".$list['savepath'].$list['savename'];
        }
        return $list?$list:"";
    }

    //获取分类名称
    public function getcate($id){
        $m=M('shop_cate');
        $map['id']=$id;
        $list=$m->field("name")->where($map)->find();

        return $list?$list['name']:"";
    }
}