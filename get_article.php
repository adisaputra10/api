<?php  
 include 'koneksi.php'; 
 $hasil         = mysql_query("SELECT * FROM article order by id desc") or die(mysql_error());
 $json_response = array();
 
if(mysql_num_rows($hasil)> 0){
 while ($row = mysql_fetch_array($hasil)) {
     $json_response[] = $row;
 }
 echo json_encode(array('article_result' => $json_response));
} 
?>