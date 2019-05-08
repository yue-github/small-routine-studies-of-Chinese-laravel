<?php
/**
 * 测试接口
 */

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class Test extends Controller
{
   public function init(){
         date_default_timezone_set('PRC');
    }
    public function test(){
      $this->init();
      DB::table('test')->insert(['date'=>date('Y-m-d H:i:s',time()),'name'=>request('name')]);
      
    }
    public function testEnter(){
      $this->init();
      DB::table('test1')->insert(['date'=>date('Y-m-d H:i:s',time()),'name'=>request('name')]);
    }
    public function testGet(){
        $result=DB::table('test1')->get();
        return $result;
    }
    public function gdmzdTest(){
          return DB::table('banner')
         ->orderBy('id','asc')->get();
    }
    
    
}

?>