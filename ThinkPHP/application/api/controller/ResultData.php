<?php


namespace app\api\controller;


trait ResultData
{
    /**
     * 返回成功
     */
    public static function returnMsg($code = 200,$message = '',$data = [],$header = [])
    {
        http_response_code($code);    //设置返回头部
        $return['code'] = (int)$code;
        $return['message'] = $message;
        $return['data'] = is_array($data) ? $data : ['info'=>$data];
        // 发送头部信息
        foreach ($header as $name => $val) {
            if (is_null($val)) {
                header($name);
            } else {
                header($name . ':' . $val);
            }
        }
        exit(json_encode($return,JSON_UNESCAPED_UNICODE));
    }
    public static function resultMsg($code = 404, $message = '未知错误', $data = [])
    {
        $result = [
            'code' => strval($code),
            'message' => trim($message),
            'data' => $data,
        ];

        return json($result);
    }

    public static function resultNotFound($code = 404, $message = '请求的资源不存在或无权限访问', $data = [])
    {
        return self::resultMsg($code, $message, $data);
    }

    public static function resultPage($data =[], $count = 0, $code = 200, $message = '请求成功')
    {
        if (empty($count) && is_array($data)) {
            $count = count($data);
        }
        $result = [
            'code' => strval($code),
            'count' => $count,
            'data' => $data,
            'message' => trim($message),

        ];

        return json($result);
    }
}