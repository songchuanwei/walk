<?php

namespace app\model;

use think\Model;

class Signs extends Model
{
	// 设置当前模型对应的完整数据表名称
    protected $table = 'wl_signs';

    //报名属于用户
    public function user()
    {
        return $this->belongsTo('Users','user_id');
    }

    //报名属于活动
    public function activitys()
    {
        return $this->hasMany('Activitys','activity_id');
    }

}