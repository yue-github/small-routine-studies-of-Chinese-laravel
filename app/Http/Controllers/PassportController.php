<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

class PassportController extends Controller
{

    public $successStatus = 200;

    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(){
        if(Auth::attempt(['name' => request('username'), 'password' => request('password')])){
            $user = Auth::user();
            $token = $user->createToken('MyApp')->accessToken;
            // DB::table('users')->where()->update(['remember_token'=>$token]);
            // $json=array('admin-token' =>['roles'=>['admin'],'introduction'=>'I am a super administrator','avatar'=>'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','name'=>'Super Admin'],'editor-token'=>[
            //     'roles'=>['editor'],
            //     'introduction'=>'I am an editor',
            //     'avatar'=>'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',
            //     'name'=>'Normal Editor'
            // ]);
          //   $json=array('admin'=>[
          //   'token'=>'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjI4ZT…3xKNXLUKbjjcNRKObvFPQY-PxPJ-vdOEUGTQleVoXO10cWv9E'
          // ],
          // 'editor'=>[
          // 'token'=>'editor-token'
          // ]);
            return response()->json(['code'=>20000,'data'=>['token'=>$token]]);
            // return response()->json(['code'=>20000,'data'=>['roles'=>['admin'],'introduction'=>'I am a super administrator','avatar'=>'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','name'=>'Super Admin']]);

        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }

    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            // 'email' => 'required|email',
            'password' => 'required'
            // 'c_password' => 'required|same:password'
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        // MyApp
        // eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjBjMj…i0RdKeXUIpOjNpXSpNxfHSmUTS2IIoPEmupsPeTzmtNRTHM04
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;
        return json_encode($success);
        // return response()->json(['success'=>$success], $this->successStatus);
    }

    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function getDetails()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }
}