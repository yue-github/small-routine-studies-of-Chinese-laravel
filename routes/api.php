<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('user/login', 'PassportController@login');
Route::post('user/register', 'PassportController@register');
Route::get('Index/getTops', 'IndexController@getTops');

// 测试接口
Route::any('test','Test@test');
// 获取用户信息
Route::post('user/getUserInfo','UserController@getUserInfo');
// 用户签到
Route::post('user/sign','UserController@sign');
Route::post('user/getIntegral','UserController@getIntegral');
 



 
// 组
Route::group(['middleware' => 'auth:api'], function(){
 
});