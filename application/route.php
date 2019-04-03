<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------


use think\Route;

Route::group('admin',function(){
    Route::get('/login','admin/Login/login'); //登陆
    Route::post('/doLogin','admin/Login/doLogin'); //处理登陆
    Route::get('/logout','admin/Index/logout'); //退出

	Route::get('/index','admin/Index/index'); //后台首页

	Route::controller('/user','admin/User'); //后台用户管理
	Route::controller('/notice','admin/Notice'); //后台公告管理
	Route::controller('/outdoor','admin/Outdoor'); //后台户外知识管理
	Route::controller('/association','admin/Association'); //后台协会简介管理
	Route::controller('/article','admin/Article'); //后台文章管理
	Route::controller('/activity','admin/Activity'); //后台活动管理

	Route::controller('/service','admin/Service'); //后台客服管理
});


Route::get('/','index/Index/getIndex'); //前台首页
Route::controller('/login','index/Login'); //前台登陆注册
Route::controller('/index','index/Index'); //前台首页
Route::controller('/activity','index/Activity'); //前台活动
Route::controller('/article','index/Article'); //前台文章
Route::controller('/notice','index/Notice'); //前台公告
Route::controller('/outdoor','index/Outdoor'); //前台户外知识