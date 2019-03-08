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
// 插入推广码
Route::post('user/setTuiGuangMa','UserController@setTuiGuangMa');


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
// 获取限制的课程
Route::post('class/getClassLimit','ClassController@getClassLimit');
// 删除课程
Route::post('class/deleteClass','ClassController@deleteClass');

// 信息模块
Route::post('msg/getMsg','MsgController@getMsg');
// 获取推广金信息
Route::post('msg/getTuiMsg','MsgController@getTuiMsg');
// 获取用户信息
Route::post('msg/getUserMsg','MsgController@getUserMsg');
// 商城搜索功能
Route::post('msg/shopSearch','MsgController@shopSearch');
 

// 支付功能】
Route::post('pay/upload','PayController@upload');
// 微信支付
Route::post('pay/wxpay','PayController@wxpay');


// 图片上传
Route::post('img/upload','ImgUploadController@upload');
// 轮播图信息获取
Route::get('banner/list','ImgUploadController@getBannerList');

// 推广金
// 用户使用推广金
Route::post('found/useFound','FoundController@useFound');

// 规则制定
Route::post('rule/getTuiRule','RuleController@getTuiRule');

// 活动模块
Route::post('activity/getMsg','activityController@getMsg');
// 更新活动信息
Route::post('activity/adminEditActivity','activityController@adminEditActivity');
// 获取活动信息
Route::post('activity/adminGetActivity','activityController@adminGetActivity');
 
// 轮播图信息获取
Route::post('bannerShop/list','BannerController@getList');
// 将修改的轮播图图片储存起来
Route::post('bannerShop/imgUpload','BannerController@saveImg');
// 修改轮播图信息
Route::post('bannerShop/setList','BannerController@setList');


 // 后台管理系统接口
// 获取用户信息
Route::get('user/info','AdminUserController@info');
// 获取用户联系二维码信息
Route::post('user/getConcactImg','AdminUserController@getConcactImg');

// 登出
Route::post('user/logout','AdminUserController@logout');

// 轮播图信息获取
Route::post('banner/list','AdminBannerController@getList');
// 将修改的轮播图图片储存起来
Route::post('banner/imgUpload','AdminBannerController@saveImg');
// 修改轮播图信息
Route::post('banner/setList','AdminBannerController@setList');

// 网站访问统计
Route::post('visit/addVisit','VisitController@addVisit');

// 课程图片接口请求
Route::post('class/imgUpload','AdminClassController@imgUpload');
// 音频请求接口
Route::post('class/audio','AdminClassController@audioUploads');
// 课程相关信息修改
Route::post('class/edit','AdminClassController@edit');
// 课程添加
Route::post('class/addClass','AdminClassController@addClass');
// 课程删除
Route::post('class/delete','AdminClassController@delete');
// 用户购买的课程获取
Route::post('class/getSaleClassDetail','AdminClassController@getSaleClassDetail');



// 规则制定
Route::post('rule/getRule','RuleController@getRule');
// 编辑积分规则
Route::post('rule/editRule','RuleController@editRule');
// 获取推广金规则
Route::post('rule/getTuiRuleAdmin','RuleController@getTuiRule');
// 修改推广金
Route::post('rule/editRuleAdmin','RuleController@editRuleAdmin');

// 信息获取
Route::post('msg/getTuiMoneyConvert','MsgController@getTuiMoneyConvert');
// 标记处理
Route::post('msg/mark','MsgController@mark');
// 数据删除
Route::post('msg/adminDelete','MsgController@adminDelete');
// 选中数据删除
Route::post('msg/deleteAll','MsgController@deleteAll');

// 网站访问统计
 
Route::post('visit/getVisit','VisitController@getVisit');

// 组
Route::group(['middleware' => 'auth:api'], function(){
 // 后台管理系统接口

 

});