<?php
require_once($_SERVER['DOCUMENT_ROOT'].DIRECTORY_SEPARATOR.'php'.DIRECTORY_SEPARATOR.'include.php');
$status = $db->getInd('name', 'SELECT * FROM ?n', $tableStaus);
use DiDom\Document;
$json = file_get_contents('php://input');
$data = json_decode($json);
if ($data->type == 'form'){
    
    if (!$status['status_parsing']['value']){
        $url = $bPath.parse_url($data->catLink, PHP_URL_PATH);
        $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => $url], 'category_link');
        $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => $url.'?per_page=36'], 'next_page');
    
        $document = new Document($url, true, 'windows-1251');
        $categpryName = $document->find('h1')[0]->text();
        $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => '1'], 'status_parsing');
        $db->query("UPDATE ?n SET ?u WHERE name = ?s", $tableStaus, ['value' => $categpryName], 'category_name');
        echo json_encode($categpryName);
    }else{
        header("HTTP/1.0 201 Created");
    }
    
}elseif($data->type == 'status'){
    $arrSend = [];
    $arrSend[] = $status;
    $arrSend[] = $db->getCol('SELECT scan_flag FROM ?n', $tableProducts);
    echo json_encode($arrSend);
}
