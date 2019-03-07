<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Validator;
use Illuminate\Http\Response;
class AdminUserController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }

    public function info(){

        return response()->json(['code'=>20000,'data'=>[
	    'roles'=>['admin'],
	    'introduction'=>'I am a super administrator',
	    'avatar'=>'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',
	    'name'=>'Super Admin']]);

    }
    public function logout(){
    	return response()->json(['code'=>20000,'data'=>'success']);
    }
    public function getConcactImg(){
        return DB::table('contact')->where(['openid'=>request('openid')])->get(['erweimaSrc']);
       
    }
 
         


}





 ?>