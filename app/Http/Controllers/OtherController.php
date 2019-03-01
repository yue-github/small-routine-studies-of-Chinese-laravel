<?php 
/**
 * 公告类接口
 */
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
class OtherController extends Controller{
    public function init(){
         date_default_timezone_set('PRC');
    }
    public function change2Code(){
        $url='uploads/'.microtime(true).mt_rand().'.jpg';
        if ($fp = fopen ($url, 'w+' )) {
            fwrite ( $fp, request('code') );
            fclose ( $fp );
        }
        echo microtime(true).'|'.microtime().'|'.time(true).'|'.mt_rand();
    }
    
         


}





 ?>