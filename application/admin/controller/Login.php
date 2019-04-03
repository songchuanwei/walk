<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Users;

class Login extends Controller
{


    public function login()
    {
        return view('login/login');
    }

    public function doLogin()
    {
        if($_POST){
            $data['username']=$_POST['username'];
            $data['type']=2;
            $data['status']=1;
            $user=Users::where($data)->find();
            if(!$user){
                $this->error('账号或密码错误！');
            }
            if($user->password == md5($_POST['password'])){
                Session::set('admin_username',$user->username);
                $this->success('登陆成功', '/admin/index');
            }else{
                $this->error('账号或密码错误！');
            }
        }else{
            $this->error('请填写账号信息！');
        }
    }


}
