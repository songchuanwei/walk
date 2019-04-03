<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Users;

class Index extends Common
{

    public function index()
    {
    	$user=Users::where('username',session('admin_username'))->find();
        return view('index/index',compact('user'));
    }

    public function logout()
    {
        Session::clear();
        $this->success('退出成功', '/admin/login');
    }

}
