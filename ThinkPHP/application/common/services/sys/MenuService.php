<?php


namespace app\common\services\sys;

use app\common\models\sys\SysMenu;

class MenuService
{
    /**
     *  菜单列表
     *
     * @return mixed
     */
    public static function MenuList()
    {
        return SysMenu::all();
    }
}