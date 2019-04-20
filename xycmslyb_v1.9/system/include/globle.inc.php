<?php
define('XYCMS_BOOK', true);
define('XYCMS_IN', str_replace('system/include/globle.inc.php', '', str_replace('\\', '/', __FILE__)));
ini_set("magic_quotes_runtime",0);
//set_magic_quotes_runtime(0);
//session_start();
require XYCMS_IN . 'Conf/xycms.inc.php';;
require XYCMS_IN . 'Libs/Function/fun.php';
?>