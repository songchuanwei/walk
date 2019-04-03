<?php
namespace app\index\controller;
use think\Controller;
use think\Session;
use app\model\Users;
use app\model\Articles;
use app\model\Activitys;
use app\model\Associations;
use app\model\Notices;
use app\model\Outdoors;
use app\model\Services;

class Index extends Controller
{
    //前台首页
    public function getIndex()
    {

    	$activity1=Activitys::where('status',1)->order('start_time','desc')->limit(1)->select();    //第一活动
    	$activity2=Activitys::where('status',1)->order('start_time','desc')->limit(1,1)->select();   //第二活动
    	$activity4=Activitys::where('status',1)->order('start_time','desc')->limit(2,4)->select();   //下四活动
    	$users=Users::where('status',1)->order('create_time','desc')->limit(4)->select();             //推荐用户
    	$articles=Articles::where('status',1)->order('create_time','desc')->limit(6)->select();       //最新文章
        $association=Associations::find(1);       //公司信息
    	$outdoors=Outdoors::order('create_time','desc')->limit(3)->select();       //户外知识
        $notice1=Notices::order('create_time','desc')->limit(2)->select();          //第一公告
        $notice2=Notices::order('create_time','desc')->limit(2,2)->select();        //第二公告
        $notice3=Notices::order('create_time','desc')->limit(4,2)->select();        //第三公告
    	
        return view('index/index',compact('activity1','activity2','activity4','users','articles','outdoors','association','notice1','notice2','notice3'));
    }


    //个人信息修改
    public function getUser(){
        homeLogin();
        $association=Associations::find(1);       //公司信息

        $user=Users::where('username',session('username'))->find();

        return view('index/user',compact('association','user'));
    }

    //处理个人信息修改
    public function postDouser(){
        $user = Users::find(input('id'));
        // 获取表单上传文件  
        $file = request()->file('img');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
            $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
            if($info){
                $user->img = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
            }else{
                return ['error'=>1,'msg'=>'上传头像失败'];
            }
        } 

        if($user->username!=input('username')){
            $user1=Users::where('username',input('username'))->find();
            if($user1){
                return ['error'=>1,'msg'=>'此用户已被注册，请更换用户名或手机号'];
            }
            $user->username=input('username');
        }
        if($user->phone!=input('phone')){
            $user1=Users::where('phone',input('phone'))->find();
            if($user1){
                return ['error'=>1,'msg'=>'此用户已被注册，请更换用户名或手机号'];
            }
            $user->phone=input('phone');
        }

        if(input('password')){
            if(md5(input('password'))==$user->password){
                return ['error'=>1,'msg'=>'新密码与原密码相同'];
            }
            $user->password=md5(input('password'));
        }

        $user->update_time=date('Y-m-d H:i:s');

        if($user->save()){
            Session::set('username',$user->username);
            return ['error'=>0,'msg'=>'修改成功'];
        }else{
            return ['error'=>1,'msg'=>'修改失败'];
        }
    }


    //个人中心
    public function getMy(){
        homeLogin();
        $user=Users::where('username',session('username'))->find();
        $association=Associations::find(1);       //公司信息

        return view('index/my',compact('association','user'));
    }


    //客服对话
    public function getSign(){
        homeLogin();
        $user=Users::where('username',session('username'))->find();

        $admin=Users::where('type',2)->where('status',1)->find();

        return view('index/sign',compact('user','admin'));
    }

    //处理客服回复消息
    public function postDosign()
    {

        $service = Services::create([
            'user_id'=>input('user_id'),
            'content' =>  input('content'),
            'type' =>  1,
            'create_time'=>date('Y-m-d H:i:s'),
        ]);

        if($service){
            return ['error'=>0,'msg'=>'回复成功'];
        }else{
            return ['error'=>1,'msg'=>'回复失败'];
        }

    }



    //公司信息
    public function getGs(){
        $association=Associations::find(1);       //公司信息

        return view('index/gs',compact('association'));
    }


    //富文本编译器上传图片
    public function postUploadimg()
    {
        $data = [
            'success'   => false,
            'msg'       => '上传失败!',
            'file_path' => ''
        ];
        // 获取表单上传文件  
        $file = request()->file('upload_file');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
            $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
            if($info){
                $data['file_path'] = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
                $data['msg']       = "上传成功!";
                $data['success']   = true;
            }
        }  
           
        return $data;
            
    }


}
