<?php
namespace app\admin\controller;
use think\Controller;
use app\model\Associations;

class association extends Common
{
	//协会简介
    public function getIndex()
    {
        $association=Associations::find(1);
        return view('association/index',compact('association'));
    }

    //处理编辑协会简介
    public function postDoedit() 
    {
        $association=Associations::find(input('id'));
        $association->phone=input('phone');
        $association->phone1=input('phone1');
        $association->address=input('address');
        $association->email=input('email');
        $association->content=input('content');
        $association->update_time=date('Y-m-d H:i:s');

        if($association->save()){
            return ['error'=>0,'msg'=>'公告修改成功'];
        }else{
            return ['error'=>1,'msg'=>'公告修改失败'];
        }
    }


}
