<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <title>Payment Status</title>
  <style type="text/css">
    .payment
    {
      height:   50vh;
      width: 100%; 
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center; 
      font-family: 'Poppins',sans-serif;
    }
      .payment .info {
         height:   240px;
         width: 440px; 
        box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
        border-radius: 24px;
        display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center; 
     }
     img {
      height: 75px;
      width: 75px;
     }
    .payment h2 {
      color: gray;
      margin-top: 4px;
      font-weight: 600;
    }
     .payment a 
     {
      background: dodgerblue;
      padding: 6px 22px;
      border-radius: 24px;
      color: #ffffff;
      text-decoration: none;
      font-size: 12px;
      margin-top: -8px;
     }
    
  </style>
</head>
<body>  
<?php 
require 'vendor/autoload.php';
include "database.php";
require 'classes/User.class.php';
$stripe = new \Stripe\StripeClient('sk_test_51KU4AhSEBS8FC2AGBrVndSRDDKGvTcZkpRos73J5B29VuzkpkFO5n0ZNFSqkh9B347QRijkf9cUwS83l7WaUkTrK00bg9LAGLF');

if (isset($_GET['sessionID'])) { 
try {
  $session = $stripe->checkout->sessions->retrieve($_GET['sessionID']); 

 if ( $session->payment_status== 'paid') {
  $object = new User();
  $object->changeSubscription($session->metadata->id,$session->metadata->plan);  
  ?>
<div class='payment'>
  <div class="info">
    <img src='success.svg'>
    <h2>Payment Successful!</h2>
    <a>Redirecting</a>
  </div> 
</div>  
<script> 
      setTimeout(myURL, 3000);  
      function myURL() {
         document.location.href = 'http://localhost:3000/user/subscription';
      }
   </script>
<?php
 	 
 } 
 else
 {
?>
<div class='payment'>
  <div class="info">
    <img src='failed.svg' >
    <h2>Payment Failed!</h2>
    <a href='http://localhost:3000/user'>Return Home</a>
  </div> 
</div> 
<?php
 } 
 
  http_response_code(200);
} catch (Error $e) {
  http_response_code(500);
  echo json_encode(['error' => $e->getMessage()]);
}
}
else
{
?>
<div class='payment'>
  <div class="info">
    <img src='failed.svg' >
    <h2>Payment Failed!</h2>
    <a href='http://localhost:3000/user'>Return Home</a>
  </div> 
</div> 
<?php
  
}

?>


</body>
</html>