<?php 
/**
 * 公告类接口
 */
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Db;
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
            $insertResult=DB::table("users")
            ->insert(["openid"=>$openid,'nickName'=>$nickName,"city"=>$city,"province"=>$province,"created_at"=>date('Y-m-d H:i:s',time()),'points'=>0,'signDate'=>'2019-02-15 19:00:55','addPoint'=>8,'the_time'=>0]);
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
         


}





 ?>