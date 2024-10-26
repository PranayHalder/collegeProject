<?php 
sleep(1);
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json');
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS')
    exit('ok');
$data = json_decode(file_get_contents('php://input'), true);
include "database.php";
require 'classes/Image.class.php';

$object = new Image();
echo $object->getImage();
?>