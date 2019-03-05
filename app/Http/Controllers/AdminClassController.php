<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class AdminClassController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function imgUpload(Request $request){
        
        
         $result=DB::table('class')
            ->where(['id'=>request('id')])
            ->get();
    
            $boo=!$result->isEmpty();
            if($boo){
                $bannerSrc=json_decode($result,true)[0]['url'];
                $url=trim($bannerSrc);
                if($url){
                    $url=substr($bannerSrc, strlen(request('domain')));
                    if(file_exists($url)!=''){
                        unlink($url);
                    } 
                    
                }
                
            }
   

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
            $path =request('domain').'uploads/'.$filename;
            $getId=null;
            // 为空

            if(!$boo){
               
                 DB::table('class')->insert(['url'=>$path]);
                 $getId=json_decode(DB::table('class')->where(['url'=>$path])->get(['id']),true)[0]['id'];
            }else{
                 
                 DB::table('class')->where(['id'=>request('id')])->update(['url'=>$path]);
            }

           $id=$getId?$getId:request('id');
            return response()->json(['url'=>$path,'id'=>$id,'re'=>$result,'reid'=>request('id')]); 
         
        }
  
    }
    public function audioUploads(Request $request){
            $result=DB::table('class')
            ->where(['id'=>request('id')])
            ->get();
      
            $boo=!$result->isEmpty();
            if($boo){
                
                $bannerSrc=json_decode($result,true)[0]['audio_src'];
                $url=trim($bannerSrc);
                if($url){
                    $url=substr($bannerSrc, strlen(request('domain')));
                    if(file_exists($url)!=''){
                        unlink($url);
                    } 
                    
                }
                
            }
      
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
            $bool = Storage::disk('audio')->put($filename, file_get_contents($realPath));
            $path =request('domain').'audio/'.$filename;
            $getId=null;
            // 为空

            if(!$boo){
                 
                 DB::table('class')->insert(['audio_src'=>$path]);
                 $getId=json_decode(DB::table('class')->where(['audio_src'=>$path])->get(['id']),true)[0]['id'];
            }else{
                 
                 DB::table('class')->where(['id'=>request('id')])->update(['audio_src'=>$path]);
            }
           $id=$getId?$getId:request('id');
            return response()->json(['audio_src'=>$path,'id'=>$id,'title'=>request('title'),'re'=>$result,'reid'=>request('id')]); 
        }

    }
    public function edit(Request $request){
        $json=$request->all();
      
        $result=DB::table('class')->where(['id'=>request('id')])->update($request->all());
        if($result){
            return response()->json(['status'=>'200','更新成功']);
        }else{
            return response()->json(['status'=>'503','更新失败']);
        }
        
    }
    public function addClass(Request $request){
        $id=request('id');
        $json=$request->all();
        unset($json['id']);
        $result=DB::table('class')->where(['id'=>request('id')])->update($request->all());
        if($result){
            $json=$json['id']=$id;
            return response()->json(['status'=>200,'msg'=>'添加成功','data'=>$json]);
        }
    }
    public function delete(){
        $result=DB::table('class')
        ->where(['id'=>request('id')])
        ->delete();
        
        if($result){
            $result=DB::table('class')->get();
            return response()->json(['status'=>200,'msg'=>'数据删除成功','data'=>$result]);
        }else{
            return response()->json(['status'=>503,'msg'=>'数据删除失败']);
        }
    }
 
         


}





 ?>