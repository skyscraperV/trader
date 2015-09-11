<?php

namespace Home\Service;
use Think\Model;
use Think\Log;

/*类名：ToolKitService
  类描述：处理与UI与内部数据结构不一致性
*/
class ToolKitService extends Model {

    Protected $autoCheckFields = false;

    public function sendMessageByPhone($phone, $passcode)
    {
        //发送消息到手机
        return  true;
    }

    public function sendMessageByEmail($email, $passcode)
    {
        //发送消息给到邮箱
        return true;
    }

    public function SendAuthNumToUser($authtype, $account, $authnum)
    {
        if($authtype == "phone")
        {
            $this->sendMessageByPhone($account, $authnum);
        }else if ($authtype  == "email")
        {
            $this->sendMessageByEmail($account, $authnum);
        }

        return true;
    }


    public function makeRandomPasscode()
    {
        //生成一个随机码作为校验码
        $pattern='1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ';
        $key = "";
        $length = 4;
        for($i=0;$i<$length;$i++){
             $key .=$pattern{mt_rand(0,35)};
        }
        return $key;
    }

    public function getSysTime()
    {
        date_default_timezone_set('Asia/Chongqing'); //系统时间差8小时问题
        $date = date("Y/m/d H:i:s");
        return $date;
    }




}