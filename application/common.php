<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件


//前台登陆auth
if ( !function_exists('homeLogin') ) {
    function homeLogin()
    {
        if(!session('username')){
        	echo '<script>alert("请先登录"); window.location.href="/login/login";</script>';
            die;
        }
    }
}

//前台登陆auth
if ( !function_exists('homeLogout') ) {
    function homeLogout()
    {
        if(session('username')){
        	echo '<script>alert("您以登陆"); history.back(-1);</script>';
            die;
        }
    }
}


//截取字符串 大于一个值用...代替
if ( !function_exists('setStr') ) {
    function setStr($str,$num)
    {
        return strlen($str)>$num?mb_substr($str,0,$num).'...':$str;
    }
}