<?php

namespace app\api\controller\v1;

use think\facade\Request;
use app\api\controller\Api;

class Base extends Api
{
    protected $request; // 用来处理参数
    protected $params; // 过滤后符合要求的参数

    protected function initialize() {
        parent::initialize();

        $this->request = Request::instance();
        $this->params = $this->checkParams($this->request->param(true));

    }

    protected function checkParams($param)
    {
        if (!isset($param['id'])) {
            $param['id'] = 0;
        }
        return $param;
    }
}