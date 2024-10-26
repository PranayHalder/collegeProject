<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json');
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS')
    exit('ok');
include "database.php";
require 'vendor/autoload.php';
require 'classes/User.class.php';
use Firebase\JWT\JWT;
use Firebase\JWT\Key;
$object = new User();


  $headers = getallheaders();
  $bearer = $headers["Authorization"];
  $authcode = substr($bearer, 7);
  $token = trim($authcode);
  
$key = 'JTOW$in7738_#@$ff';
$decoded = JWT::decode( $token, new Key($key, 'HS256'));
echo $object->FetchSubscription($decoded->data->userid);
?>