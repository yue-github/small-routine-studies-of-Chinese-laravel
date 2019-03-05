<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class RuleController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function getTuiRule(){
         $result=DB::table('tui_rule')
         ->where(['type'=>'tui'])
         ->get();
         return $result;
    }
    public function getRule(){
       return DB::table('integral_rule')->get();
    }
    
    public function editRule(Request $request){

    	$arr=$request->all();
    	DB::table('users')->where(['role'=>'just'])->update(['addPoint'=>$arr[0]['addPoint']]);
    	DB::table('users')->where(['role'=>'vip'])->update(['addPoint'=>$arr[1]['addPoint']]);
    		DB::table('integral_rule')->delete();
    		$update=DB::table('integral_rule')->insert($request->all());
    		if($update){
    			return response()->json(['status'=>200,'msg'=>'规则修改成功']);
    		}else{
    			return response()->json(['status'=>200,'msg'=>'规则修改失败']);
    		}
    }

    public function getTuiRuleAdmin(){
    	return DB::table('tui_rule')->where(['type'=>'tui'])->get();
    }
    public function editRuleAdmin(Request $request){
    	DB::table('tui_rule')->where(['type'=>'tui'])->update($request->all()[0]);
    }
 
         


}





 ?>