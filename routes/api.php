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
Route::any('testEnter','Test@testEnter');
Route::any('gdmzdTest','Test@gdmzdTest');
Route::any('testGet','Test@testGet');



// 获取用户信息
Route::post('user/getUserInfo','UserController@getUserInfo');
// 获取用户的推广码
Route::post('user/getTuiGuangMa','UserController@getTuiGuangMa');
// 获取推广金
Route::post('user/getFound','UserController@getFound');
// 联系方式操作
Route::post('user/goContact','UserController@goContact');
// 获取联系方式
Route::post('user/getContact','UserController@getContact');
// 验证用户联系方式是否存在
Route::post('user/proveContact','UserController@proveContact');


// 用户签到
Route::post('user/sign','UserController@sign');
Route::post('user/getIntegral','UserController@getIntegral');
// 获取积分
Route::post('user/getInCount','UserController@getInCount');
// 其它控制器获取数据
Route::post('change2Code','OtherController@change2Code');

// 课程模块
// 获取课程信息
Route::post('class/getClass','ClassController@getClass');
// 课程支付接口
Route::post('class/getClassPay','ClassController@getClassPay');
// 增加观看记录
Route::post('class/addEye','ClassController@addEye');
// 信息模块
Route::post('msg/getMsg','MsgController@getMsg');
Route::post('msg/getTuiMsg','MsgController@getTuiMsg');

// 支付功能】
Route::post('pay/upload','PayController@upload');


// 图片上传
Route::post('img/upload','ImgUploadController@upload');
// 轮播图信息获取
Route::get('banner/list','ImgUploadController@getBannerList');

// 推广金
// 用户使用推广金
Route::post('found/useFound','FoundController@useFound');

// 规则制定
Route::post('rule/getTuiRule','RuleController@getTuiRule');




 // 后台管理系统接口
// 获取用户信息
Route::get('user/info','AdminUserController@info');
// 登出
Route::post('user/logout','AdminUserController@logout');
// 轮播图信息获取
Route::post('banner/list','AdminBannerController@getList');


// 组
Route::group(['middleware' => 'auth:api'], function(){
 // 后台管理系统接口

 

});