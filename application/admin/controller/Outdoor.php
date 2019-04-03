<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Outdoors;

class outdoor extends Common
{
	//户外知识列表
    public function getIndex()
    {
        $outdoors=Outdoors::order('create_time')->select();
        return view('outdoor/index',compact('outdoors'));
    }

    //添加户外知识
    public function getAdd()
    {
        return view('outdoor/add');
    }
    //处理添加户外知识
    public function postDoadd()
    {
        $outdoor = Outdoors::create([
		    'title'  =>  input('title'),
		    'content' =>  input('content'),
		    'create_time'=>date('Y-m-d H:i:s'),
		    'update_time'=>date('Y-m-d H:i:s')
		]);

		if($outdoor){
			return ['error'=>0,'msg'=>'公告添加成功'];
		}else{
			return ['error'=>1,'msg'=>'公告添加失败'];
		}
    }

    //编辑户外知识
    public function getEdit()
    {
        $outdoor=Outdoors::find(input('id'));
        return view('outdoor/edit',compact('outdoor'));
    }
    //处理编辑户外知识
    public function postDoedit() 
    {
        $outdoor=Outdoors::find(input('id'));
        $outdoor->title=input('title');
        $outdoor->content=input('content');
        $outdoor->update_time=date('Y-m-d H:i:s');

        if($outdoor->save()){
            return ['error'=>0,'msg'=>'公告修改成功'];
        }else{
            return ['error'=>1,'msg'=>'公告修改失败'];
        }
    }

    //删除户外知识
    public function getDel()
    {
        $outdoor=Outdoors::find(input('id'));
        if($outdoor->delete()){
            return ['error'=>0,'msg'=>'公告删除成功'];
        }else{
            return ['error'=>1,'msg'=>'公告删除失败'];
        }
    }

}
