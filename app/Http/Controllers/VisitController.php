<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class VisitController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function addVisit(){
        $count=intval(json_decode(DB::table('web_visit')->where(['type'=>'enter'])->get(['count']),true)[0]['count'])+1;
        DB::table('web_visit')->where(['type'=>'enter'])->update(['count'=>$count]);
    }
    public function getVisit(){
    	return DB::table('web_visit')->where(['type'=>'enter'])->get(['count']);
    }
      
         
     
     
     
 
         


}





 ?>