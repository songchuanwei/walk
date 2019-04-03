<?php
namespace app\admin\controller;
use think\Controller;
use think\Session;
use app\model\Notices;

class Notice extends Common
{
	//公告列表
    public function getIndex()
    {
        $notices=Notices::order('create_time')->select();
        return view('notice/index',compact('notices'));
    }

    //添加公告
    public function getAdd()
    {
        return view('notice/add');
    }
    //处理添加公告
    public function postDoadd()
    {
        $notice = Notices::create([
		    'title'  =>  input('title'),
		    'content' =>  input('content'),
		    'create_time'=>date('Y-m-d H:i:s'),
		    'update_time'=>date('Y-m-d H:i:s')
		]);

		if($notice){
			return ['error'=>0,'msg'=>'公告添加成功'];
		}else{
			return ['error'=>1,'msg'=>'公告添加失败'];
		}
    }

    //编辑公告
    public function getEdit()
    {
        $notice=Notices::find(input('id'));
        return view('notice/edit',compact('notice'));
    }
    //处理编辑公告
    public function postDoedit() 
    {
        $notice=Notices::find(input('id'));
        $notice->title=input('title');
        $notice->content=input('content');
        $notice->update_time=date('Y-m-d H:i:s');

        if($notice->save()){
            return ['error'=>0,'msg'=>'公告修改成功'];
        }else{
            return ['error'=>1,'msg'=>'公告修改失败'];
        }
    }

    //删除公告
    public function getDel()
    {
        $notice=Notices::find(input('id'));
        if($notice->delete()){
            return ['error'=>0,'msg'=>'公告删除成功'];
        }else{
            return ['error'=>1,'msg'=>'公告删除失败'];
        }
    }
    

    //富文本编译器上传图片
    public function postUploadimg()
    {
    	$data = [
            'success'   => false,
            'msg'       => '上传失败!',
            'file_path' => ''
        ];
        // 获取表单上传文件  
        $file = request()->file('upload_file');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
	        $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
	        if($info){
	        	$data['file_path'] = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
                $data['msg']       = "上传成功!";
                $data['success']   = true;
	        }
        }  
           
        return $data;
            
    }


}
