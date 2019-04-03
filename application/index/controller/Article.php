<?php
//命名空间
namespace app\index\controller;

//实例化TP内部库
use think\Controller;
use think\DB;

//实例化模型 （模型操作数据库）
use app\model\Users;
use app\model\Articles;
use app\model\Outdoors;
use app\model\Associations;
use app\model\Comments;


//创建活动控制器类
class Article extends Controller
{
    
    //资讯列表
    public function getIndex(){
        //搜索标题（有查询带标题或内容的资讯，没有查询所有）  input('title') ->  http://walk.com/article/index?title=将隆重举行
        $title=input('title')?input('title'):'';

        $association=Associations::find(1);       //公司信息(公共头部尾部公司信息)

        //查找资讯列表（order('create_time','desc') 按发布时间排序->默认降序） （paginate(4) 分页 每页4条）（where('status',1)  判断条件->状态为1 ）
        $articles=Articles::where('status',1)->where(function($query) use($title){
            $query->where('title','like','%'.$title.'%')->whereOr('content','like','%'.$title.'%');
        })->order('create_time','desc')->paginate(4);

        //右部分户外知识
        $outdoors=Outdoors::order('create_time','desc')->limit(5)->field('id,title')->select();

        //渲染页面 （view() 渲染view视图）   compact('association','articles','outdoors','title') 传递数据到页面
        return view('article/index',compact('association','articles','outdoors','title'));
    }

    //资讯详情
    public function getShow(){
        $association=Associations::find(1);       //公司信息

        //根据id找到这篇资讯    input('id') ->http://walk.com/article/show?id=7
        $article=Articles::find(input('id'));       //活动信息

        //渲染界面
        return view('article/show',compact('association','article'));
    }


    //点赞/取消赞
    public function getZan()
    {
        //找到当前登陆用户 （session('username') 登陆成功后存的session信息）  （field('id')  只从数据库查到某一字段） （->find() 只查找一条）
        $user=Users::where('username',session('username'))->field('id')->find();

        //判断传类型为1是点赞 2为取消赞
        if(input('type')==1){

            //增加添加wl_user_article表（点赞表）数据
            $data['user_id']=$user->id;
            $data['article_id']=input('article_id');
            $data['create_time']=date('Y-m-d H:i:s',time());

            //往wl_user_article数据表增加数据（insert($data)）
            if(Db::table('wl_user_article')->insert($data)){
                //判断处理结果（处理成功返回0成功，1失败）
                return ['error'=>0,'msg'=>'点赞成功'];
            }else{
                return ['error'=>1,'msg'=>'点赞失败'];
            }
        }else{
            if(input('type')==2){
                //取消赞（删除wl_user_article表 用户id等于当前登陆用户id  当前资讯id 的一条数据） （delete() 删除数据）
                $zan=Db::table('wl_user_article')->where('article_id',input('article_id'))->where('user_id',$user->id)->delete();
                if($zan){
                    return ['error'=>0,'msg'=>'取消赞成功'];
                }else{
                    return ['error'=>1,'msg'=>'$user->id失败'];
                }
            }else{
                return ['error'=>1,'msg'=>'参数错误'];
            }
        }
        
    }

    //评论
    public function postComment(){

        $user=Users::where('username',session('username'))->field('id')->find();

        //评论，在实例化的Comments模型（评论表）里添加一条数据
        $article = Comments::create([
            'type_id'  =>  input('type_id'),
            'user_id'=>$user->id,
            'content' =>  input('content'),
            'create_time'=>date('Y-m-d H:i:s',time()),
            'type'=>1
        ]);

        if($article){
            return ['error'=>0,'msg'=>'评论成功'];
        }else{
            return ['error'=>1,'msg'=>'评论失败'];
        }

    }


    //发布资讯
    public function getAdd(){
        //封装函数，判断是否登陆  文件路径application->common.php
        homeLogin();
        $association=Associations::find(1);       //公司信息

        return view('article/add',compact('association'));
    }
    //处理发布资讯
    public function postDoadd(){

        $user=Users::where('username',session('username'))->field('id')->find();

         // 获取表单上传文件  
        $file = request()->file('img');  
        //判断有没有上传文件，没有返回提示
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

        $data['title']=input('title');
        $data['user_id']=$user->id;
        $data['status']=1;
        $data['content']=input('content');
        $data['create_time']=date('Y-m-d H:i:s');
        $data['update_time']=date('Y-m-d H:i:s');

        $article = Articles::create($data);

        if($article){
            return ['error'=>0,'msg'=>'发布资讯成功'];
        }else{
            return ['error'=>1,'msg'=>'发布资讯失败'];
        }

    }


     //编辑资讯
    public function getEdit(){
        homeLogin();
        $association=Associations::find(1);       //公司信息

        //查找要编辑的资讯
        $article=Articles::find(input('id'));       //资讯信息

        return view('article/edit',compact('association','article'));
    }
    //处理编辑活动
    public function postDoedit(){

        //查找要编辑的资讯
        $article=Articles::find(input('id'));       //活动信息

         // 获取表单上传文件  
        $file = request()->file('img');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
            $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
            if($info){
                $article->img = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
            }else{
                return ['error'=>1,'msg'=>'上传头像失败'];
            }
        }  

        //修改修改的信息
        $article->title=input('title');
        $article->content=input('content');
        $article->update_time=date('Y-m-d H:i:s');

        //修改信息（save() 修改数据库信息）
        if($article->save()){
            return ['error'=>0,'msg'=>'修改资讯成功'];
        }else{
            return ['error'=>1,'msg'=>'修改资讯失败'];
        }

    }

    //删除资讯
    public function getDel()
    {
        //查找要编辑的资讯
        $article=Articles::find(input('id'));       //活动信息

        //删除资讯 （delete() 删除数据库一条数据）
        if($article->delete()){
            return ['error'=>0,'msg'=>'资讯删除成功'];
        }else{
            return ['error'=>1,'msg'=>'资讯删除失败'];
        }
    }


}
