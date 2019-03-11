<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
// 支付
use EasyWeChat\Factory;
use App\Repositories\WxPayRepository;
use function EasyWeChat\Kernel\Support\generate_sign;

// use Illuminate\Http\Response;
class PayController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function upload(Request $request){
        $this->init();
        $number=json_decode(DB::table('class')
            ->where(['id'=>request('id')])
            ->get(['number']),true)[0]['number'];
        if($number<=0){
            return response()->json(['status'=>503,'msg'=>'商品已售空']);
        }
        $arr=$request->all();
        $id=request('id');
        $useHowIntegral=request('useHowIntegral');
        $arr['class_id']=$id;
            unset($arr['useHowIntegral']);
             $arr['howPeople']=intval($arr['howPeople'])+1;
             DB::table('class')->where(['id'=>request('id')])->update(['howPeople'=>$arr['howPeople']]);
            unset($arr['id']);
            $arr['pay_time']=date('Y-m-d H:i:s',time());
            $username=json_decode(DB::table('users')->where(['openid'=>request('openid')])->get(['nickName']),true)[0]['nickName'];
            $arr['username']=$username;
           
            // 将用户购买的课程插入到表中
            $result=DB::table('class_pay')->insert($arr);
            if($result){
            DB::table('class')->where(['id'=>request('id')])->update(['number'=>($number-1)]);
            // 更新用户积分
            $points=json_decode(DB::table('users')->where(['openid'=>request('openid')])->get(),true)[0]['points'];
            $nowPoints=$points-$useHowIntegral;
            DB::table('users')->where(['openid'=>request('openid')])
            ->update(['points'=>$nowPoints]);
            // 增加信息通知
            DB::table('msg')->insert(['openid'=>request('openid'),'system_is'=>1,'message'=>'恭喜你获得'.request('title').'课程。请点击【我的】查看','create_time'=>date('Y-m-d H:i:s',time())]);
            // 获取被别人标识符，对引导你进来的人进行增加推广金
            // 并根据有无标识或者有无匹配项进行智能匹配
            $found_mark_that=json_decode(DB::table('users')
            ->where(['openid'=>request('openid')])
            ->get(['found_mark_that']),true)[0]['found_mark_that'];
            if(!$found_mark_that){
                return response()->json(['status'=>200,'msg'=>'你身上无被人标识']);
            }
            $msg=DB::table('users')->where(['found_mark_this'=>$found_mark_that])
            ->get(['promotion_fund','openid']);
            $boo_msg=$msg->isEmpty();
            if($boo_msg){
                return response()->json(['status'=>200,'msg'=>'你身上被人标识,但是找不到把你标识的人']);
            }else{
               $msg=json_decode($msg,true)[0]; 
            }
            
            // 增加推广者的推广金信息
            DB::table('users')
            ->where(['openid'=>$msg['openid']])
            ->update(['promotion_fund'=>request('tui_found')+$msg['promotion_fund']]);
            // 获取购买者信息
            $customer=json_decode(DB::table('users')->where(['openid'=>request('openid')])
            ->get(['nickName']),true)[0]['nickName'];
            $res=array('openid'=>$msg['openid'],'msg'=>'课程购买','name'=>$customer,'title'=>request('title'),'get_found'=>request('tui_found'),'create_time'=>date('Y-m-d H:i:s',time()));
            // 增加推广者积分信息通知
            DB::table('tuiguang_msg')
            ->insert($res);
             
                return response()->json(['status'=>200,'msg'=>'原子弹导入成功']);
            }
    }
    public function wxpay(){
        $payment = \EasyWeChat::payment(); // 微信支付

        $result = $payment->order->unify([
            'body'         => request('title'),
            'out_trade_no' => microtime(true).mt_rand().'',
            'trade_type'   => 'JSAPI',  // 必须为JSAPI
            'openid'       => request('openid'), // 这里的openid为付款人的openid
            'total_fee'    => request('price'), // 总价
        ]);

        // 如果成功生成统一下单的订单，那么进行二次签名
        if ($result['return_code'] === 'SUCCESS') {
            // 二次签名的参数必须与下面相同
            $params = [
                'appId'     => 'wxcdcea82c094087d6',
                'timeStamp' => time().'',
                'nonceStr'  => $result['nonce_str'],
                'package'   => 'prepay_id=' . $result['prepay_id'],
                'signType'  => 'MD5',
            ];

            // config('wechat.payment.default.key')为商户的key
            $params['paySign'] = generate_sign($params, config('wechat.payment.default.key'));

            return json_encode($params);
        } else {
            return json_encode($result);
        }




    }
         


}





 ?>