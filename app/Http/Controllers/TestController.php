<?php 

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Builder;
class TestController extends Controller{
	public function init(){
		date_default_timezone_set('PRC');
	}
	public function test(){
          
	}
    public function getTask(){
         if(request('password')=='love3 '){
                $this->init();
                $arr=array('黄仕颖','李杰文','黄林明','刘炳浩','凌金成','张建峰','郑观广','黄儒','蔡俊伟','林巧','刘伟安','林栩','梁光');
                $random_keys=array_rand($arr,5);
                 $result=DB::table('task')->insert(['name1'=>$arr[$random_keys[0]],'name2'=>$arr[$random_keys[1]],'name3'=>$arr[$random_keys[2]],'name4'=>$arr[$random_keys[3]],'name5'=>$arr[$random_keys[4]],'date'=>date('Y-m-d H:i:s',time())]);
                 if($result){
                   return DB::table('task')
                   ->orderBy('date','desc')
                   ->get();
                 }
         }else if(request('password')=='lowingshan'){
            return response()->json(['status'=>503,'msg'=>'密码换了，新密码有5位']);
         }else if(request('password')=='333 '){
            $this->init();
                $arr=array('黄仕颖','李杰文','黄林明','刘炳浩','凌金成','张建峰','郑观广','黄儒','蔡俊伟','林巧','刘伟安','林栩','梁光');
                $random_keys=array_rand($arr,1);
                 $result=DB::table('task')->insert(['name1'=>$arr[$random_keys[0]],'name2'=>null,'name3'=>null,'name4'=>null,'name5'=>null,'date'=>'总结']);
                 if($result){
                   return DB::table('task')
                   ->orderBy('date','desc')
                   ->get();
                 }
         }
    }
    public function getName(){
        return DB::table('task')
                   ->orderBy('date','desc')
                   ->get();
    }
	public function upload(Request $request){
        // 文件是否上传成功
		$file = $request->file('file');
		 
		if ($file->isValid()) {

            // 获取文件相关信息
            $originalName = $file->getClientOriginalName(); // 文件原名
            $ext = $file->getClientOriginalExtension();     // 扩展名
            $realPath = $file->getRealPath();   //临时文件的绝对路径
            $type = $file->getClientMimeType();     // image/jpeg
            
            // 上传文件
            $filename = date('Y-m-d-H-i-s') . '-' . uniqid() . '.' . $ext;
            // 使用我们新建的uploads本地存储空间（目录）
            //这里的uploads是配置文件的名称
            $bool = Storage::disk('uploads')->put($filename, file_get_contents($realPath));
            $path ='/uploads/'.$filename;
            return response()->json(['url'=>$path]); 
        }
    }




}





?>