<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Articles;

class Article extends Common
{
	//资讯列表
    public function getIndex()
    {
        $articles=Articles::order('create_time')->select();
        return view('article/index',compact('articles'));
    }

    //编辑资讯
    public function getEdit()
    {
        $article=Articles::find(input('id'));
        return view('article/edit',compact('article'));
    }
    //处理编辑资讯
    public function postDoedit(){

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

        $article->title=input('title');
        $article->content=input('content');
        $article->update_time=date('Y-m-d H:i:s');

        if($article->save()){
            return ['error'=>0,'msg'=>'修改活动成功'];
        }else{
            return ['error'=>1,'msg'=>'修改活动失败'];
        }

    }

    //删除资讯
    public function getDel()
    {
        $article=Articles::find(input('id'));
        if($article->delete()){
            return ['error'=>0,'msg'=>'公告删除成功'];
        }else{
            return ['error'=>1,'msg'=>'公告删除失败'];
        }
    }

    //查看资讯
    public function getShow()
    {
        $article=Articles::find(input('id'));
        return view('article/show',compact('article'));
    }

    //修改状态
    public function getStatus()
    {
        $article=Articles::find(input('id'));
        $article->status=input('status');
        if($article->save()){
            return ['error'=>0,'msg'=>'修改状态成功'];
        }else{
            return ['error'=>1,'msg'=>'修改状态失败'];
        }
    }




}
