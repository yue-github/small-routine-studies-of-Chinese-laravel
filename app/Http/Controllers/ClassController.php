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
        $result=DB::table('class')
        ->orderBy('id','asc')
        ->get();
        return $result;
    }
    public function getClassPay(){
    	$result=DB::table('class_pay')
    	->where(['openid'=>request('openid')])
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
        ->limit(8)
        ->get();
    }
   
         


}





 ?>