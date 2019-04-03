<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Users;

class User extends Common
{
	//用户列表
    public function getIndex()
    {
        $users=Users::order('create_time')->select();
        return view('user/index',compact('users'));
    }

    //查看报名活动
    public function getShow()
    {
        $user=Users::find(input('id'));
        return view('user/show',compact('user'));
    }


    //修改状态
    public function getStatus()
    {
        $user=Users::find(input('id'));
        $user->status=input('status');
        if($user->save()){
            return ['error'=>0,'msg'=>'修改状态成功'];
        }else{
            return ['error'=>1,'msg'=>'修改状态失败'];
        }
    }

    //修改类型
    public function getType()
    {
        $user=Users::find(input('id'));
        $user->type=input('type');
        if($user->save()){
            return ['error'=>0,'msg'=>'修改类型成功'];
        }else{
            return ['error'=>1,'msg'=>'修改类型失败'];
        }
    }



}
