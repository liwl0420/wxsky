<?php

namespace app\admin\controller;

use app\common\controller\BaseController;
use app\common\model\CustomerModel;
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

    public function getAll()
    {
        $page = \think\facade\Request::param('page', '1');
        $limit = \think\facade\Request::param('limit', '10');
        $search = \think\facade\Request::param('search', null);

        $data = empty($search) ?
            CustomerModel::order('createtime', 'desc')->paginate(intval($limit), false, ['page' => intval($page)])
            : CustomerModel::where('wxname', 'like', '%' . $search . '%')
                ->order('createtime', 'desc')->paginate(intval($limit), false, ['page' => intval($page)]);
        if ($data->isEmpty())
            $res = ['code' => 0, 'msg' => '', 'count' => 0, 'data' => []];
        else {
            $count = $data->total();
            $res = ['code' => 0, 'msg' => '', 'count' => $count, 'data' => $data->items()];
        }
        return json($res);
    }
    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
        return $this->fetch();
    }

}