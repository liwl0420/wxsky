<?php

namespace app\admin\controller;

use app\common\controller\BaseController;
use think\facade\Log;
use think\facade\Session;


class CustomerController extends BaseController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //
        return $this->fetch();
    }

}