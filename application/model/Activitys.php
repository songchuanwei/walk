<?php

namespace app\model;

use think\Model;

class Activitys extends Model
{
	// 设置当前模型对应的完整数据表名称
    protected $table = 'wl_activitys';

    //文章属于作者
    public function user()
    {
        return $this->belongsTo('Users','user_id');
    }

    //活动的所有评论
    public function comments()
    {
        return $this->hasMany('Comments','type_id')->where('type',2);
    }

    //活动的所有报名
    public function signs()
    {
        return $this->hasMany('Signs','activity_id');
    }

    //活动报名的所有用户
    public function userSigns(){
      return $this->belongsToMany('Users','signs','user_id','activity_id');
    }

}