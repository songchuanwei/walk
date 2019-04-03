<?php
namespace app\index\controller;
use think\Controller;
use think\Session;
use app\model\Users;

class Login extends Controller
{
    //前台登陆
    public function getLogin()
    {
        //封装函数，判断是否登陆  文件路径application->common.php  (登陆后跳转其他界面)
        homeLogout();

        //渲染视图
        return view('login/login');
    }
    //处理前台登陆
    public function postDologin()
    {
        //判断是否有表单提交数据
        if($_POST){

            //查找是否有此用户名的数据
            $user=Users::where('username',$_POST['username'])->where('status',1)->find();

            //判断是否有这条数据 没有继续查找有没有手机号匹配的数据
            if(!$user){
                //查找有没有手机号匹配的数据
                $user1=Users::where('phone',$_POST['username'])->where('status',1)->find();
                
                //判断是否有这条数据 有的话判断加密密码正不正确
                if($user1){

                    //判断加密密码正不正确 正确存session 不正确返回错误
                    if($user1->password == md5($_POST['password'])){
                        Session::set('username',$user1->username);
                        return ['error'=>0,'msg'=>'登陆成功'];
                    }else{
                        return ['error'=>1,'msg'=>'账号或密码错误！'];
                    }
                }else{
                    return ['error'=>1,'msg'=>'账号或密码错误！'];
                }  
            }else{
                //判断加密密码正不正确 正确存session 不正确返回错误
                if($user->password == md5($_POST['password'])){
                    Session::set('username',$user->username);
                    return ['error'=>0,'msg'=>'登陆成功'];
                }else{
                    return ['error'=>1,'msg'=>'账号或密码错误！'];
                }
            }
            
        }else{
            return ['error'=>1,'msg'=>'账号或密码错误！'];
        }
    }


    //前台注册
    public function getRegister()
    {
        //封装函数，判断是否登陆  文件路径application->common.php  (登陆后跳转其他界面)
        homeLogout();
        //渲染界面
        return view('login/register');
    }
    //处理前台注册
    public function postDoregister()
    {
        // 获取表单上传文件  
        $file = request()->file('img');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
            $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
            if($info){
                $data['img'] = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
            }else{
                return ['error'=>1,'msg'=>'上传头像失败'];
            }
        }else{
            return ['error'=>1,'msg'=>'请上传头像'];
        }   


        //判断是否有用户名或者手机号相同的记录，有不允许注册
        $user1=Users::where('phone',input('phone'))->whereOr('username',input('username'))->find();
        if($user1){
            return ['error'=>1,'msg'=>'此用户已被注册，请更换用户名或手机号'];
        }

        $data['username']=input('username');
        $data['phone']=input('phone');
        $data['type']=1;
        $data['status']=1;
        $data['password']=md5(input('password'));
        $data['create_time']=date('Y-m-d H:i:s');
        $data['update_time']=date('Y-m-d H:i:s');
        
        //插入数据
        $user = Users::create($data);

        //插入数据成功 存session
        if($user){
            Session::set('username',$user->username);
            return ['error'=>0,'msg'=>'注册成功'];
        }else{
            return ['error'=>1,'msg'=>'注册失败'];
        }
    }


    //退出
    public function getLogout()
    {
        //封装函数，判断是否登陆  文件路径application->common.php  
        homeLogin(); 
        //清空session 并退出
        Session::clear();
        $this->redirect('/index/index', [], 302, ['success' => '退出成功']);
    }




}
