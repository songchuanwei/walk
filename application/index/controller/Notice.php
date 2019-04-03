<?php
namespace app\index\controller;
use think\Controller;
use app\model\Users;
use app\model\Notices;
use app\model\Associations;


class notice extends Controller
{
    
    //公告列表
    public function getIndex(){
        $association=Associations::find(1);       //公司信息

        $notices=Notices::order('create_time','desc')->paginate(4);

        return view('notice/index',compact('association','notices','notices'));
    }

    //公告详情
    public function getShow(){
        $association=Associations::find(1);       //公司信息

        $notice=Notices::find(input('id'));       //公告信息

        return view('notice/show',compact('association','notice'));
    }


}
