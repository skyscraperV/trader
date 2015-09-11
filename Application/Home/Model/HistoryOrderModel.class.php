<?php

namespace Home\Model;
use Think\Model;
use Think\Log;

class HistoryOrderModel extends Model {

    protected $tablePrefix = 'tbl_';
    protected $tableName = 'historytrade';
    protected $fields = array('autotradeid', 'tradeid', 'userid',
			'goodname', 'tradetype', 'tradenum', 'operstarttime',
            'operendtime', 'operendprice', 'gainedmoney', 'commission',
			'stoplossprice', 'stopgainprice', 'interest');
    protected $pk = array('autotradeid');



}