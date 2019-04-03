<?php

namespace app\model;

use think\Model;

class Zans extends Model
{
	// 设置当前模型对应的完整数据表名称
    protected $table = 'wl_zans';

    //赞属于作者
    public function user()
    {
        return $this->belongsTo('Users','user_id');
    }


}