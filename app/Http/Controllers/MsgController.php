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
         


}





 ?>