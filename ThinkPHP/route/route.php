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
Route::allowCrossDomain(true);

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');
// 查看菜单列表
Route::get('api/v1/menu','api/v1.menu/lists');
Route::post('api/v1/menu','api/v1.menu/updateList');
Route::put('api/v1/menu','api/v1.menu/updateList');
Route::get('api/v1/checkLogin','api/v1.index/login');

//生成access_token，post访问Token类下的token方法
Route::post('api/:version/token','api/:version.token/token');
Route::post('api/:version/token/refresh','api/:version.token/refresh');

/*Route::rule('api/login','api/index/login');
Route::rule('api/menus','api/index/menus');
Route::get('api/:version/:controller/:function','api/:version.:controller/:function');*/
return [
    'api/:version/:controller/:function'=>'api/:version.:controller/:function'// 有方法名时 网址格式:http://www.xxx.com/api/v1/index/login
];
