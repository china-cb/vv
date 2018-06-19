<?php

// 检测PHP环境  
if(version_compare(PHP_VERSION,'5.3.0','<'))  die('require PHP > 5.3.0 !');  
   
  
// $_GET['m']='Admin';  
// 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false  
define('APP_DEBUG',True);  
//指定模块控制器和方法  
$_GET['m']='WexinApi';  
$_GET['c']='WeixinPay';  
$_GET['a']='notify';  
// 定义应用目录  
define('APP_PATH','./joel/');  
define("APP_ROOT",dirname(__FILE__));  
// 引入ThinkPHP入口文件  
  
require THINK_PATH.'ThinkPHP.php'; 
?>