<?php
//Importing Database Script 
define('HOST','localhost');
		define('USER','root');
		define('PASS','');
		define('DB','api');
//Connecting to Database 
$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect'); 
//Creating sql query 
$id = $_GET['id'];
$sql = "SELECT * FROM article WHERE id='$id'"; 
//getting result 
$r = mysqli_query($con,$sql); 
//creating a blank array 
$result = array(); 
//looping through all the records fetched 
while($row = mysqli_fetch_array($r)){ 
//Pushing name and id in the blank array created 
array_push($result,array( 
"id"=>$row['id'],
"title"=>strtoupper($row['title']),
"description"=>$row['description'],
"date_post"=>$row['date_post'],
"foto"=>$row['foto'],
"author"=>strtoupper($row['author'])
));
}
//Displaying the array in json format
echo json_encode(array('result'=>$result));
mysqli_close($con);
?>