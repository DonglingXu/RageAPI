<?php


namespace app\common\services\sys;


use app\common\models\sys\SysManager;

class ManagerService
{
    public static function ManagerList()
    {
        return SysManager::all();
    }

    public static function FindManager($mobile, $password)
    {
        $password_hash = md5($password);
        return SysManager::find()->where(['mobile' => $mobile, 'password_hash' => $password_hash])->column('mobile','id');
    }
}