<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json');
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS')
    exit('ok');
 include "database.php";
require 'classes/User.class.php';
$object = new User();
$response =  $object->Uplod($_FILES,$_POST);
echo $response;

?>