<?php

namespace app\model;

use think\Model;

class Services extends Model
{
	// 设置当前模型对应的完整数据表名称
    protected $table = 'wl_services';


    //客服属于用户
    public function user()
    {
        return $this->belongsTo('Users','user_id');
    }
    

}