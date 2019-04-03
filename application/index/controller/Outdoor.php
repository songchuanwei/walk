<?php
namespace app\index\controller;
use think\Controller;
use app\model\Users;
use app\model\Outdoors;
use app\model\Associations;


class Outdoor extends Controller
{
    
    //户外知识列表
    public function getIndex(){
        $association=Associations::find(1);       //公司信息

        $outdoors=Outdoors::order('create_time','desc')->paginate(4);

        return view('outdoor/index',compact('association','outdoors','outdoors'));
    }

    ///户外知识详情
    public function getShow(){
        $association=Associations::find(1);       //公司信息

        $outdoor=Outdoors::find(input('id'));       ///户外知识信息

        return view('outdoor/show',compact('association','outdoor'));
    }


}
