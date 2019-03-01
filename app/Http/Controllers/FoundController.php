<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class FoundController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function useFound(Request $request){
        $this->init();
        $contact=json_decode(DB::table('contact')->where(['openid'=>request('openid')])->get(['name','phone','adrress','erweimaSrc']),true)[0];
        $need_pay=round((request('promotion_fund')/request('how_integral'))*request('money'),2);
        $needChangeData=array('create_time'=>date('Y-m-d H:i:s',time()),'is_read'=>0,'need_pay'=>$need_pay,'is_success'=>0);
        // 整合要插入的数据
        $willInsertArr=array_merge($contact,$request->all(),$needChangeData);
        $result=DB::table('tui_money_fund')->insert($willInsertArr);
        if($result){
            // 插入完更新表中的推广金及通知客户
           $promotion_fund=json_decode(DB::table('users')->where(['openid'=>request('openid')])->get(),true)[0]['promotion_fund'];
           $now_fund=$promotion_fund-request('promotion_fund');
           DB::table('users')->where(['openid'=>request('openid')])->update(['promotion_fund'=>$now_fund]);
           DB::table('msg')->insert(['openid'=>request('openid'),'system_is'=>1,'message'=>'恭喜你兑换了推广金'.request('promotion_fund').'点,'.'你将获得人民币'.$need_pay.'元,'.'请耐心等待','create_time'=>date('Y-m-d H:i:s',time())]);
          return response()->json(['status'=>200,'found'=>$now_fund,'msg'=>'提交申请成功']);
        }else{
          return response()->json(['status'=>503,'found'=>100,'msg'=>'提交申请失败']);
        }
    }
    
         


}





 ?>