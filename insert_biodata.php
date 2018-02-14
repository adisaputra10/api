<?php
//Importing Database Script 
define('HOST','localhost');
    define('USER','root');
    define('PASS','');
    define('DB','api');
//Connecting to Database 
$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect'); 
  $nama_lengkap = strtoupper($_POST['nama_lengkap']);
        $tempat_lahir = strtoupper($_POST['tempat_lahir']);
           $tanggal_lahir = $_POST['tanggal_lahir'];
           $no_hp = $_POST['no_hp'];
              $email = strtoupper($_POST['email']);
                $sql = "SELECT * FROM biodata where no_hp='$no_hp' and email='$email' ";
             $push = mysqli_query($con,$sql);
         $check = mysqli_fetch_array($push);  
        if(isset($check)){
    echo 'Sudah ada yang mendaftar dengan Nomor HP '.$no_hp.' dan email '.$email ." ini. Silahkan coba lagi dengan data lain.";
    }
    else{
        $nama_lengkap = strtoupper($_POST['nama_lengkap']);
            $tempat_lahir = strtoupper($_POST['tempat_lahir']);
                 $tanggal_lahir = $_POST['tanggal_lahir'];
               $no_hp = $_POST['no_hp'];
             $email = strtoupper($_POST['email']);
          if(empty($nama_lengkap)){
            echo "Nama Lengkap In Harus Di Isi";
          }
          else if(empty($tempat_lahir)){
            echo "Tempat Lahir Harus Di Isi";
          }
          elseif (empty($tanggal_lahir)){
            echo "Tanggal Lahir Harus Di Isi"; 
              }
              elseif (empty($no_hp))
            {
            echo "Nomor Hp Harus Di Isi"; 
              }elseif (empty($email))
            {
            echo "Email Harus Di Isi"; 
              }
            else
            { 
              $query = "INSERT INTO biodata (nama_lengkap,tempat_lahir,tanggal_lahir,no_hp,email) 
              VALUES ('$nama_lengkap','$tempat_lahir','$tanggal_lahir','$no_hp','$email')";
                 $result = mysqli_query($con,$query);
                    if($result){
                    echo 'Data Berhasil Di Simpan';
                }else{
                echo 'Data Gagal Di Simpan';
                }
              }
          }
      ?>