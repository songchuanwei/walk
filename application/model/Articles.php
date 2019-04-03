<?php

namespace app\model;

use think\Model;
use app\model\Users;

class Articles extends Model
{
	// 设置当前模型对应的完整数据表名称
    protected $table = 'wl_articles';

    //文章属于作者
    public function user()
    {
        return $this->belongsTo('Users','user_id');
    }

    //文章的所有赞
    public function zanUsers(){
      return $this->belongsToMany('Users','user_article','user_id','article_id');
    }

    //文章是否有登陆用户的赞
    public function articleHasUser(){
        $user=Users::where('username',session('username'))->field('id')->find();
        if($user){
            return $this->belongsToMany('Users','user_article','user_id','article_id')->where('user_id',$user->id)->count();
        }else{
            return 0;
        } 
    }

    //文章的所有评论
    public function comments()
    {
        return $this->hasMany('Comments','type_id')->where('type',1);
    }

}