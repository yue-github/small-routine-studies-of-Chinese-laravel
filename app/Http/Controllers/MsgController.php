<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class MsgController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function getMsg(){
        $result=DB::table('msg')
        ->where(['openid'=>request('openid')])
        ->orderBy('id', 'desc')
        ->get(['system_is','id','message','create_time']);
        return $result;
    }
    public function getTuiMsg(){
    	$result=DB::table('tuiguang_msg')
    	->where(['openid'=>request('openid')])
        ->orderBy('id', 'desc')
        ->get();
    	return $result;
    }
    public function getTuiMoneyConvert(){

        return DB::table('tui_money_fund')->orderBy('is_success','asc')->get();
    }
    
    public function mark(){
        $update=DB::table('tui_money_fund')->where(['id'=>request('id')])->update(['is_success'=>1]);
        if($update){
            $data=DB::table('tui_money_fund')->orderBy('is_success','asc')->get();
            return response()->json(['status'=>200,'data'=>$data]);
        }else{
            return repsonse()->json(['status'=>503,'msg'=>'标记已处理失败']);
        }
    }
    public function adminDelete(){
        $result=DB::table('tui_money_fund')->where(['id'=>request('id')])->delete();

        if($result){
            $data=DB::table('tui_money_fund')->orderBy('is_success','asc')->get();
            return response()->json(['status'=>200,'data'=>$data]);
        }else{
            return repsonse()->json(['status'=>503,'msg'=>'数据删除失败']);
        }
    }
    public function deleteAll(Request $request){
        $result=DB::table('tui_money_fund')->whereIn('id', $request->all())->delete();

        if($result){
            $data=DB::table('tui_money_fund')->orderBy('is_success','asc')->get();
            return response()->json(['status'=>200,'data'=>$data]);
        }else{
            return repsonse()->json(['status'=>503,'msg'=>'数据删除失败']);
        }
    }
    public function getUserMsg(){
        return DB::table('users')
        ->orderBy('id','asc')
        ->get();
    }
    public function shopSearch(){
        $search=request('msg');
            $matchMsg=json_decode(DB::table('class')->get(['id','title','whoColumn']),true);
            $arr=array();
            foreach ($matchMsg as $key => $value) {
                $match=$value['title'].$value['whoColumn'];
                 $result=strstr($match,$search);
                 if($result){
                    $arr[]=$value['id'];
                 }
            }
           
          
            return DB::table('class')->whereIn('id',$arr)->get();
    }
         


}





 ?>