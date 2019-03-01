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
      echo "yes you are right";
       // $this->delete();
       // $this->insert();
       // $this->select();
       // $this->update();
       // return $this->select();
      // return response()->json(['msg'=>"签到成功","status"=>200]);
    }
     public function testEnter(){
      $this->init();
      DB::table('test1')->insert(['date'=>date('Y-m-d H:i:s',time()),'name'=>request('name')]);
      echo "enter";
       // $this->delete();
       // $this->insert();
       // $this->select();
       // $this->update();
       // return $this->select();
      // return response()->json(['msg'=>"签到成功","status"=>200]);
    }
    public function testGet(){
        $result=DB::table('test1')->get();
        return $result;
    }
    public function gdmzdTest(){
      echo 'gdmzdTest';
    }
    public function insert(){
    	// 数据库插入
       $inBoo=DB::table("test_user")->insert([
    	 		['id'=>'123','name'=>"test0","age"=>18,'sex'=>"男"],
    	 		['id'=>'123','name'=>"test2","age"=>19,'sex'=>"男"],
    	 		['id'=>'123','name'=>"test1","age"=>rand(1,100),'sex'=>"女"]
    	 	]);
       // echo $inBoo;

    }
    public function select(){
      $result=DB::table("users")->get(["name"]);
    	return response()->json(['msg'=>"签到成功","status"=>200,'result'=>$result]);
    }
    public function delete(){
    		$deBoo=DB::table("test_user")->delete();
    		// echo $deBoo;
    }
    public function update(){
    		DB::table("test_user")->where("age","18")->update(['name'=>"hello world"]);
    }
}

?>