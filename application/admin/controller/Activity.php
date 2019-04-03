<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Activitys;

class Activity extends Common
{
	//活动列表
    public function getIndex()
    {
        $activitys=Activitys::order('create_time')->select();
        return view('activity/index',compact('activitys'));
    }


    //编辑活动
    public function getEdit()
    {
        $activity=Activitys::find(input('id'));
        return view('activity/edit',compact('activity'));
    }
    //处理编辑活动
    public function postDoedit(){

        $activity=Activitys::find(input('id'));       //活动信息

         // 获取表单上传文件  
        $file = request()->file('img');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
            $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
            if($info){
                $activity->img = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
            }else{
                return ['error'=>1,'msg'=>'上传头像失败'];
            }
        }  

        $activity->title=input('title');
        $activity->phone=input('phone');
        $activity->address=input('address');
        $activity->money=input('money');
        $activity->start_time=input('start_time');
        $activity->content=input('content');
        $activity->update_time=date('Y-m-d H:i:s');

        if($activity->save()){
            return ['error'=>0,'msg'=>'修改活动成功'];
        }else{
            return ['error'=>1,'msg'=>'修改活动失败'];
        }

    }

    //删除活动
    public function getDel()
    {
        $activity=Activitys::find(input('id'));
        if($activity->delete()){
            return ['error'=>0,'msg'=>'公告删除成功'];
        }else{
            return ['error'=>1,'msg'=>'公告删除失败'];
        }
    }

    //查看活动
    public function getShow()
    {
        $activity=Activitys::find(input('id'));
        return view('activity/show',compact('activity'));
    }

    //修改状态
    public function getStatus()
    {
        $activity=Activitys::find(input('id'));
        $activity->status=input('status');
        if($activity->save()){
            return ['error'=>0,'msg'=>'修改状态成功'];
        }else{
            return ['error'=>1,'msg'=>'修改状态失败'];
        }
    }




}
