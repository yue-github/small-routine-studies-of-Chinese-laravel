<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class AdminBannerController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function getList(){
         echo 'hello';
         
         
    }
 
         


}





 ?>