<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\facade\Route;

// 前台
Route::get('/', 'index');

// 登陆登出
Route::get('login', 'admin/login/view');
Route::get('new_code', 'admin/login/new_verify');
Route::post('verify', 'admin/login/verify');
Route::get('logout', 'admin/login/logout');

// 后台
Route::get('admin', 'admin/index/index');
Route::get('admin/home', 'admin/index/home');

Route::resource('admin/showinfo', 'admin/ShowInfo');
Route::post('admin/showinfo/getall', 'admin/ShowInfo/getall');

Route::resource('admin/showplace', 'admin/ShowPlace');
Route::post('admin/showplace/getall', 'admin/ShowPlace/getall');

Route::resource('admin/customer', 'admin/customer');
Route::post('admin/customer/getall', 'admin/customer/getall');


Route::resource('admin/user', 'admin/user');
Route::post('admin/user/getall', 'admin/user/getall');

Route::resource('admin/sysop', 'admin/sysop');

Route::miss('miss');


return [

];
