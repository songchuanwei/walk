<?php

namespace app\model;

use think\Model;

class Users extends Model
{
	// 设置当前模型对应的完整数据表名称
    protected $table = 'wl_users';

    //用户发布的文章
     public function articles()
    {
        return $this->hasMany('Articles','user_id','id');
    }

    //用户发布的活动
     public function activitys()
    {
        return $this->hasMany('Activitys','user_id','id');
    }

    //用户赞过的文章
    public function zanArticles(){
      return $this->belongsToMany('Articles','user_article','article_id','user_id');
    }

    //用户的报名的所有活动
    public function activitySigns(){
      return $this->belongsToMany('Activitys','signs','activity_id','user_id');
    }

    //用户的报名的所有果冻
    public function hasSigns($activity_id){
      return $this->hasMany('Signs','user_id','id')->where('activity_id',$activity_id)->count();
    }

    //我的客服
    public function services(){
       return $this->hasMany('Services','user_id','id');
    }


}