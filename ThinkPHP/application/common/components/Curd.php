<?php


namespace app\common\components;


trait Curd
{

    public function init()
    {
        parent::init();

        if ($this->modelClass === null) {
            throw new \think\Exception('"modelClass" 属性必须设置.');
        }
    }

    /**
     * 返回模型
     *
     * @param $id
     * @return
     */
    protected function findModel($id)
    {
        if (empty($id) || empty(($model = $this->modelClass::find()->where(['id' => $id])->find()))) {
            return $model = new $this->modelClass;
        }

        return $model;
    }
}