<?php 
 
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class CompanyController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function getComIntroduce(){
        return response()->json(['intro'=>DB::table('company_introduce')->get(),'img'=>DB::table('com_in_img')->get()]);
    }
    public function getMoreComData(){
        return DB::table('more_company_data')->get();
    }
}





 ?>