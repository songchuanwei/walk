<?php
namespace app\admin\controller;
use think\Controller;
use app\model\Services;
use app\model\Users;

class Service extends Common
{
	//客服列表
    public function getIndex()
    {

        $services=Services::order('create_time','desc')->group('user_id')->select();

        return view('service/index',compact('services'));
    }



    //客服详情
    public function getShow()
    {
        $services=Services::where('user_id',input('user_id'))->order('create_time','asc')->select();
        $user_id=input('user_id');
        $admin=Users::where('type',2)->where('status',1)->find();
        return view('service/show',compact('user_id','services','admin'));
    }


    //处理客服回复消息
    public function postDoshow()
    {

        $service = Services::create([
            'user_id'=>input('user_id'),
            'content' =>  input('content'),
            'type' =>  2,
            'create_time'=>date('Y-m-d H:i:s'),
        ]);

        if($service){
            return ['error'=>0,'msg'=>'回复成功'];
        }else{
            return ['error'=>1,'msg'=>'回复失败'];
        }

    }



    //删除回复
    public function getDel()
    {
        $service=services::find(input('id'));

        if($service->delete()){
            return ['error'=>0,'msg'=>'订单删除成功'];
        }else{
            return ['error'=>1,'msg'=>'订单删除失败'];
        }
    }


    //删除回复
    public function getDeluser()
    {
        $service=Services::where('user_id',input('id'))->delete();

        if($service){
            return ['error'=>0,'msg'=>'删除回复成功'];
        }else{
            return ['error'=>1,'msg'=>'删除回复失败'];
        }
    }
    

}
