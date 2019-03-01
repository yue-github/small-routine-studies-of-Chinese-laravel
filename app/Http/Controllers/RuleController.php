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
 
         


}





 ?>