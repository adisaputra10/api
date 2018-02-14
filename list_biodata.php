<?php
//Importing Database Script 
define('HOST','localhost');
		define('USER','root');
		define('PASS','');
		define('DB','api');
//Connecting to Database 
$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect'); 
//Creating sql query 
$sql = "SELECT * FROM biodata ORDER BY id desc"; 
//getting result 
$r = mysqli_query($con,$sql); 
//creating a blank array 
$result = array(); 
//looping through all the records fetched 
while($row = mysqli_fetch_array($r)){ 
//Pushing name and id in the blank array created 
array_push($result,array( 
"id"=>strtoupper($row['id']),
"nama_lengkap"=>strtoupper($row['nama_lengkap']),
"tempat_lahir"=>strtoupper($row['tempat_lahir']),
"tanggal_lahir"=>strtoupper($row['tanggal_lahir']),
"email"=>strtoupper($row['email']),
"no_hp"=>$row['no_hp']
));
}
//Displaying the array in json format
echo json_encode(array('result'=>$result));
mysqli_close($con);
?>