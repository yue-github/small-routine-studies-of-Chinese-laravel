<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class activityController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function getMsg(){
        return DB::table('activity')->get();
    }
    public function adminEditActivity(Request $request){
    	$id=$request->all()[0]['id'];
    	$res=DB::table('activity')->where(['id'=>$id])->update($request->all()[0]);
    	if($res){

    		return response()->json(['status'=>200,'msg'=>'活动更新成功']);
    	}else{
    		return response()->json(['status'=>503,'msg'=>'活动更新失败']);
    	}
    }
    public function adminGetActivity(){
    	return DB::table('activity')->get();
    }

 
   
         


}





 ?>