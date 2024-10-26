<?php  
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json');
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS')
    exit('ok');
$data = json_decode(file_get_contents('php://input'), true);
include "database.php"; 
require 'classes/User.class.php';
$userid = $data['userid'];
$User = new User();
$response = $User->checkSubscription($userid); 
if($response["plan"] !== 'basic')
{
	$User->changeSubscription($userid,'basic'); 
	echo json_encode(array('message' => 'success')); 
}
else
{
	echo json_encode(array('message' => 'Already Subscribed To Basic Plan')); 
}
?>