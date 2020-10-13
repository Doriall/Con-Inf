<?
require_once($_SERVER['DOCUMENT_ROOT'].DIRECTORY_SEPARATOR.'vendor'.DIRECTORY_SEPARATOR.'autoload.php');

$bPath = 'https://www.onlinetrade.ru';

$opts = array(
    'user'    => 'root',
    'pass'    => 'root',
    'db'      => 'db',
    'charset' => 'utf8'
);

$db = new SafeMySQL($opts);
$tableStaus = "status";
$tableProducts = "products";