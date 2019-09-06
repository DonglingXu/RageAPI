<?php


namespace app\common\validate\sys;

use think\Validate;

class ManagerValidate extends Validate
{
    protected $rule = [
        "username"=>'require|max:20|unique:sys_manager',
        "password_hash"=>'require|max:20',
        "nickname"=>'require|max:20',
        "realname"=>'max:10|unique:sys_manager',
    ];

    protected $message  =   [
        'username.require' => '账号必须填写',
        'username.max' => '账号最多不能超过20个字符',
        'username.unique' => '账号不能重复',

        'nickname.require' => '昵称必须填写',
        'nickname.max' => '昵称最多不能超过20个字符',

        'realname.max' => '真实姓名最多不能超过10个字符',
        'realname.unique' => '真实姓名不能重复',
    ];

    protected $scene = [
        'edit'  =>  ['username', 'nickname', 'realname'],
    ];
}