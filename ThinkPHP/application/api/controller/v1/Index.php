<?php

namespace app\api\controller\v1;

use think\db;
use think\Request;
use think\Validate;
use think\db\Where;

class Index extends Base
{

    public function index()
    {
        return '123';
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }

    public function login()
    {
        $data['code'] = 200;

        return json(['code'=>'200']);
    }

    public function menus()
    {
      return json($this->menuList());
    }
    public  function itemsMerge(array $items, $pid = 0, $idField = "id", $pidField = 'pid', $child = 'subMenus')
    {
        $arr = [];
        foreach ($items as $v) {
            if ($v[$pidField] == $pid) {
                $v[$child] = $this->itemsMerge($items, $v[$idField], $idField, $pidField);
                $arr[] = $v;
            }
        }

        return $arr;
    }
    public function menuList()
    {
        $data = Db::name('sys_menu')->where(['status' => 1])->select();
        return $this->itemsMerge($data);
    }
}
