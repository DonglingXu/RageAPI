<?php


namespace app\common\validate\sys;

use think\Validate;

class MenuValidate extends Validate
{
    protected $rule = [
        "name"=>'require|max:20|unique:sys_menu',
    ];

    protected $message  =   [
        'name.require' => '名称必须填写',
        'name.max' => '名称最多不能超过20个字符',
        'name.unique' => '名称不能重复',
    ];

}