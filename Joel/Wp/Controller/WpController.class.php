<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/6/5
 * Time: 21:46
 */

namespace Wp\Controller;
use think\Controller;

class WpController extends Controller
{


    public function index(){    	
        //var_dump($_SESSION);
        $map['id'] = I('goodsid');
        $uid = I("uid");		
//     var_dump(cookie("uvip"));
        //查询数据库中是否存在加密后的用户id
        $sql = "SELECT  md5(CONCAT(uid, 'dabai')) AS newuid,uid FROM joel_user_goods WHERE goodsid = ".I('goodsid')." AND md5(CONCAT(uid, 'dabai')) = '".$uid."'";
        $info = M()->query($sql);
        echo $lsql = M()->getLastsql(); 
        if(!empty($info)){
            //更新PV数
            $mmp['uid'] = intval($info[0]['uid']);
            $mmp['goodsid'] = intval(I('goodsid'));
            M("user_goods")->where($mmp)->setInc("pv",1);
            //echo $lsql = M()->getLastsql();           
        }
        	
        
        $goodsinfo = M("shop_goods")->where($map)->find();
        $listpic=$this->getPic($goodsinfo['pic']);
        $goodsinfo['imgurl']=$listpic['imgurl'];
        $goodsinfo['cate_name'] = $this->getcate($goodsinfo['cid']);
        $this->assign("goodsinfo",$goodsinfo);
        $this->assign("goodsid",I('goodsid'));
        $this->assign("uid",$uid);
        $this->display();

    }

    //设置uv
    public function setuv()
    {
        /*
        cookie('uvip',null);
        return;
        */
        $data['date'] = date("Y-m-d");
        
        $data['goodsid'] = I("get.goodsid");
       
        //查询数据库中是否存在加密后的用户id
        $sql = "SELECT  md5(CONCAT(uid, 'dabai')) AS newuid,uid FROM joel_user_goods WHERE goodsid = ".I('get.goodsid')." AND md5(CONCAT(uid, 'dabai')) = '".I("get.uid")."'";
        $info = M()->query($sql);
		//echo $lsql = M()->getLastsql(); 
        if(!empty($info)){
            $data['uid'] = $info[0]['uid'];
            //更新PV数
            $ip = $this->getRealIp();
            if((cookie("uvip")===null)){   //如果设置了，就代表已经浏览过了
                $data['ip'] = $ip;
                $data['create_time'] = time();
                M("uvlog")->add($data);
                M("user_goods")->where(["uid"=>$info[0]['uid'],"goodsid"=>I("get.goodsid")])->setInc("uv",1);
                cookie('uvip',$ip,86400);
                echo  "setok";
               
            }else{
                 echo  "isset";
            }
           
        }
       
        
    }


    public function getRealIp()
    {
      $ip=false;
      if(!empty($_SERVER["HTTP_CLIENT_IP"])){
        $ip = $_SERVER["HTTP_CLIENT_IP"];
      }
      if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ips = explode (", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
        if ($ip) { array_unshift($ips, $ip); $ip = FALSE; }
        for ($i = 0; $i < count($ips); $i++) {
          if (!eregi ("^(10│172.16│192.168).", $ips[$i])) {
            $ip = $ips[$i];
            break;
          }
        }
      }
      return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);
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

    public function pay()
    {

        $this->redirect('/index.php/WeixinApi/WeixinPay/index');
    }
}