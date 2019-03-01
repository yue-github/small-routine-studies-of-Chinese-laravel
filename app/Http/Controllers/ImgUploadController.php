<?php
/**
 * 测试接口
 */

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Response;
class ImgUploadController extends Controller
{
   public function init(){
         date_default_timezone_set('PRC');
   }
   public function upload(Request $request){
    $file = $request->file('file');
    $result=DB::table('contact')
    ->where(['openid'=>request('openid')])
    ->get();
    $boo=!$result->isEmpty();
    if($boo){
        $erweimaSrc=json_decode($result,true)[0]['erweimaSrc'];
        $path_er='.'.(substr($erweimaSrc,request('length')));
        unlink($path_er);
    }

        // 文件是否上传成功
         
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
     public function getBannerList(){
        $result=DB::table('banner')->get();
        return $result;
     }
 
}

?>