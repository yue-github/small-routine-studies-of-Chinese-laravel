<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class ClassController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function getClass(){
        // 垃圾数据清理
        $clearSpace=json_decode(DB::table('class')->where(['price'=>null])->get(),true);
        foreach ($clearSpace as $key => $value) {
            if($value['url']){
               $url=trim($value['url']); 
               if($url){
                    $url=substr($url, strlen(request('domain')));
                    if(file_exists($url)!=''){
                        unlink($url);
                    } 
                    
                }
            }
            if($value['audio_src']){
               $audio_src=trim($value['audio_src']); 
               if($audio_src){
                    $audio_src=substr($audio_src, strlen(request('domain')));
                    if(file_exists($audio_src)!=''){
                        unlink($audio_src);
                    } 
                    
                }
            }
              
                
        }
        DB::table('class')->where(['price'=>null])->delete();
        $result=DB::table('class')
        ->orderBy('id','asc')
        ->get();
        return $result;
    }
    public function getClassPay(){
    	$result=DB::table('class_pay')
    	->where(['openid'=>request('openid')])
        ->orderBy('pay_time','desc')
    	->get();
        return $result;
    }
    
    public function addEye(Request $request){
        $eye=intval(json_decode(DB::table('class')
            ->where(['id'=>request('id')])
            ->get(),true)[0]['eye']);
        $result=DB::table('class')
        ->where(['id'=>request('id')])
        ->update(['eye'=>strval($eye+1)]);
        DB::table('class_pay')
        ->where(['class_id'=>request('id')])
        ->update(['eye'=>strval($eye+1)]);
        if($result){
            return response()->json(['status'=>200,'msg'=>'更新成功']);
        }
    }
    public function getClassLimit(){
        return DB::table('class')
        ->where(['class_try_read'=>1])
        ->orderBy('id', 'asc')
        ->limit(12)
        ->get();
    }
    public function deleteClass(){
        $result=DB::table('class_pay')->where(['id'=>request('id')])->delete();
        if($result){
            $data=DB::table('class_pay')->where(['openid'=>request('openid')])->get();
            return response()->json(['status'=>200,'msg'=>'删除成功','data'=>$data]);
        }else{
             return response()->json(['status'=>503,'msg'=>'删除失败']);
        }
    }
   
         


}





 ?>