<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json');
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS')
    exit('ok');
$data = json_decode(file_get_contents('php://input'), true);
 
require 'vendor/autoload.php'; 
$stripe = new \Stripe\StripeClient('sk_test_51KU4AhSEBS8FC2AGBrVndSRDDKGvTcZkpRos73J5B29VuzkpkFO5n0ZNFSqkh9B347QRijkf9cUwS83l7WaUkTrK00bg9LAGLF');

$checkout_session = $stripe->checkout->sessions->create([
  'customer_email' => $data['email'],
  'metadata' => ['id' => $data['userid'] , 'plan' => $data['plan']],
  'line_items' => [[
    'price_data' => [
      'currency' => 'inr',
      'product_data' => [
        'name' => $data['name'],
      ],
      'unit_amount' => $data['amount']*100*12,
    ],
    'quantity' => 1,
  ]],
  'mode' => 'payment',
    'success_url' => "http://localhost/api/return.php?sessionID={CHECKOUT_SESSION_ID}",
  'cancel_url' => 'http://localhost/api/return.php',
]);

 
echo $checkout_session->url;

?>