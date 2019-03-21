<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class UserController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    
     public function getUserInfo(){
        $this->init();
        $openid=request('openid');
        $userMsg=request('userMsg');
        $city=$userMsg['city'];
        $nickName=$userMsg['nickName'];
        $province=$userMsg['province'];
        $result=DB::table("users")->where(["openid"=>$openid])
        ->get();
        if($result->isEmpty()){
            $point=json_decode(DB::table('integral_rule')->where(['role'=>'just'])->get(['addPoint']),true)[0]['addPoint'];
            $insertResult=DB::table("users")
            ->insert(["openid"=>$openid,'nickName'=>$nickName,"city"=>$city,"province"=>$province,"created_at"=>date('Y-m-d H:i:s',time()),'points'=>0,'signDate'=>'未开始','addPoint'=>$point,'the_time'=>0,'promotion_fund'=>0,'role'=>'just']);
            if($insertResult){
                return response()->json(["status"=>200,"msg"=>"用户信息储存成功"]);
            }else{
                return response()->json(["status"=>503,"msg"=>"用户信息储存失败"]);
            }
        }else{
            return response()->json(["status"=>503,"msg"=>"用户信息储存失败"]);
        }
         
     
    }
    public function sign(){
        $this->init();
        $openid=request('openid');
        $result=json_decode(DB::table("users")->where(["openid"=>$openid])
        ->get(['signDate','addPoint','points','the_time']),true)[0];

        $signTimeBefore=strtotime($result['signDate']);
        $stamp=request('nowTimeStamp')-$signTimeBefore;
        if($stamp>=28800){
            $needAddpoint=$result['addPoint']+$result['points'];
            $needTime=$result['the_time']+1;
            DB::table("users")->where(['openid'=>$openid])
            ->update(['points'=>$needAddpoint,'signDate'=>date('Y-m-d H:i:s',time()),'the_time'=>$needTime]);
            return response()->json(['msg'=>"签到成功","status"=>200,'stamp'=>$stamp,'w'=>$needAddpoint]);
        }else{
            return response()->json(['msg'=>"签到失败","status"=>503,'stamp'=>$stamp]);
        }
    }

    public function getIntegral(){
        $result=DB::table('users')
        ->where(['openid'=>request('openid')])
        ->get(['points','addPoint','the_time','signDate']);
        return response()->json(['integral'=>$result,'w'=>request('openid')]);     
    }
    public function getInCount(){
        $result=json_decode(DB::table('users')
        ->where(['openid'=>request('openid')])
        ->get(['points']),true);
        return response()->json(['inCount'=>$result[0]['points']]);
    }
    public function getTuiGuangMa(){
        $result=DB::table('users')
        ->where(['openid'=>request('openid')])
        ->get(['tuiguangma_src']);
        return $result;
    }
    public function getFound(){
        $result=DB::table('users')
        ->where(['openid'=>request('openid')])
        ->get(['promotion_fund']);
        return $result;
    }
    public function goContact(Request $request){
          $result=DB::table('contact')->where(['openid'=>request('openid')])
          ->get();
          if($result->isEmpty()){
            $res=DB::table('contact')->insert($request->all());
            if($res){
                return response()->json(['status'=>200,'msg'=>'联系方式已建立']);
            }
          }else{
            $res=DB::table('contact')->where(['openid'=>request('openid')])->update($request->all());
            if($res){
                return response()->json(['status'=>200,'msg'=>'联系方式已建立']);
            }
          }
    }
    public function getContact(){
        $result=DB::table('contact')->where(['openid'=>request('openid')])->get();
        return $result;
    }
    public function proveContact(){
        $result=DB::table('contact')
        ->where(['openid'=>request('openid')])
        ->get();
        if($result->isEmpty()){
            return response()->json(['status'=>201,'msg'=>'此openid无相关联系方式记录']);
        }else{
            return response()->json(['status'=>200,'msg'=>'此openid有相关联系方式记录']);
        }
    }
    public function setTuiGuangMa(){
        if(request('src')!=''){
            $result=DB::table('users')->where(['openid'=>request('openid')])->update(['tuiguangma_src'=>request('src')]);
            if($result){
                return 'success';
            }
        }
        
    }
    public function getCompanyContact(){
        return DB::table('contact_us')->get();
    }
         


}





 ?>