<?php
//命名空间
namespace app\index\controller;

use think\Controller;

//实例化模型
use app\model\Users;
use app\model\Activitys;
use app\model\Notices;
use app\model\Associations;
use app\model\Comments;
use app\model\Signs;


//创建活动控制器类
class Activity extends Controller
{
    
    //活动列表
    public function getIndex(){
        $title=input('title')?input('title'):'';
        $association=Associations::find(1);       //公司信息

        $activitys=Activitys::where('status',1)->where(function($query) use($title){
            $query->where('title','like','%'.$title.'%')->whereOr('content','like','%'.$title.'%');
        })->order('start_time','desc')->paginate(4);

        $notices=Notices::order('create_time','desc')->limit(5)->field('id,title')->select();

        return view('activity/index',compact('association','activitys','notices','title'));
    }

    //活动详情
    public function getShow(){
        $association=Associations::find(1);       //公司信息

        $activity=Activitys::find(input('id'));       //活动信息

        return view('activity/show',compact('association','activity'));
    }

    //评论
    public function postComment(){

        $user=Users::where('username',session('username'))->field('id')->find();

        $activity = Comments::create([
            'type_id'  =>  input('type_id'),
            'user_id'=>$user->id,
            'content' =>  input('content'),
            'create_time'=>date('Y-m-d H:i:s'),
            'type'=>2
        ]);

        if($activity){
            return ['error'=>0,'msg'=>'评论成功'];
        }else{
            return ['error'=>1,'msg'=>'评论失败'];
        }

    }


    //活动报名
    public function postSign(){

        $user=Users::where('username',session('username'))->field('id')->find();

        if($user->hasSigns(input('activity_id'))>0){
            return ['error'=>1,'msg'=>'您已报名，请及时参加'];
        }

        $sign = Signs::create([
            'activity_id'  =>  input('activity_id'),
            'user_id'=>$user->id,
            'name' =>  input('name'),
            'phone' =>  input('phone'),
            'address' =>  input('address'),
            'content' =>  input('content'),
            'create_time'=>date('Y-m-d H:i:s'),
        ]);

        if($sign){
            return ['error'=>0,'msg'=>'报名成功，请即使参加活动!'];
        }else{
            return ['error'=>1,'msg'=>'报名失败'];
        }

    }


    //发布活动
    public function getAdd(){
        homeLogin();
        $association=Associations::find(1);       //公司信息

        return view('activity/add',compact('association'));
    }
    //处理发布活动
    public function postDoadd(){

        $user=Users::where('username',session('username'))->field('id')->find();

         // 获取表单上传文件  
        $file = request()->file('img');  
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
        $data['phone']=input('phone');
        $data['user_id']=$user->id;
        $data['status']=1;
        $data['address']=input('address');
        $data['money']=input('money');
        $data['start_time']=input('start_time');
        $data['content']=input('content');
        $data['create_time']=date('Y-m-d H:i:s');
        $data['update_time']=date('Y-m-d H:i:s');

        $activity = Activitys::create($data);

        if($activity){
            return ['error'=>0,'msg'=>'发布活动成功'];
        }else{
            return ['error'=>1,'msg'=>'发布活动失败'];
        }

    }


     //编辑活动
    public function getEdit(){
        homeLogin();
        $association=Associations::find(1);       //公司信息
        $activity=Activitys::find(input('id'));       //活动信息

        return view('activity/edit',compact('association','activity'));
    }
    //处理编辑活动
    public function postDoedit(){

        $activity=Activitys::find(input('id'));       //活动信息

         // 获取表单上传文件  
        $file = request()->file('img');  
        if(!empty($file)) {  
             // 移动到框架应用根目录/public/uploads/ 目录下  
            $info = $file->move(ROOT_PATH.'public'.DS.'upload'); 
            if($info){
                $activity->img = '/upload/'.date('Ymd',time()).'/'.$info->getFilename();
            }else{
                return ['error'=>1,'msg'=>'上传头像失败'];
            }
        }  

        $activity->title=input('title');
        $activity->phone=input('phone');
        $activity->address=input('address');
        $activity->money=input('money');
        $activity->start_time=input('start_time');
        $activity->content=input('content');
        $activity->update_time=date('Y-m-d H:i:s');

        if($activity->save()){
            return ['error'=>0,'msg'=>'修改活动成功'];
        }else{
            return ['error'=>1,'msg'=>'修改活动失败'];
        }

    }

    //删除活动
    public function getDel()
    {
        $activity=Activitys::find(input('id'));       //活动信息
        if($activity->delete()){
            return ['error'=>0,'msg'=>'活动删除成功'];
        }else{
            return ['error'=>1,'msg'=>'活动删除失败'];
        }
    }

    //删除评论
    public function getDelcomment()
    {
        $comment=Comments::find(input('id'));       //活动信息
        if($comment->delete()){
            return ['error'=>0,'msg'=>'评论删除成功'];
        }else{
            return ['error'=>1,'msg'=>'评论删除失败'];
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
