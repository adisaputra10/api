-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Feb 2018 pada 14.25
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `andro_user`
--

CREATE TABLE `andro_user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level_login` enum('1','2') NOT NULL,
  `status` enum('0','1') NOT NULL,
  `foto` varchar(225) NOT NULL,
  `latest_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `andro_user`
--

INSERT INTO `andro_user` (`id`, `username`, `password`, `nama`, `level_login`, `status`, `foto`, `latest_login`, `email`, `no_hp`) VALUES
(1, 'admin', 'admin', 'Andre', '1', '1', 'andrea.jpg', '2017-05-17 17:05:49', 'devloperpdak@gmail.com', '085206451636');

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `date_post` date NOT NULL,
  `status` int(1) NOT NULL,
  `counter` int(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `author`, `date_post`, `status`, `counter`, `foto`) VALUES
(1, 'Multiple sms di android', 'Untuk kali ini saya mau berbagi cara mengirim pesan sms baik dalam format text dan binary data di android. Dengan string statis dan parameter dinamis sekaligus, oke langsung z gan ini codenya.</p>\n\n/** * Created by PDAK-Dev, integrasi sms gateway + android (sms service manager android). */ public void signup() { String receipentsNumber[] = {"085206451636",editTextNOMOR_HP_KADIS.getText().toString()};*/ String sms = "Android Aktivasi ADB,nama:" + editTextNAMA_ADB.getText().toString() + ",no.adb:" + editTextNOMOR_KONTAK.getText().toString() + ",no.kadis:" + editTextNOMOR_HP_KADIS.getText().toString() + ".Bls dngn mengetik ,cth : ANDROID APPROVE NO_HP_ADB" for (int i = 0; i &lt; receipentsNumber.length; i++) { try { SmsManager smsManager = SmsManager.getDefault(); smsManager.sendTextMessage(receipentsNumber[i], null, sms, null, null); alert.showAlertDialog(Register.this, "Notifikasi Sms", "Sms Dikirim Ke "+ receipentsNumber[i]+" Menunggu Moderasi...", false); } catch (Exception e) { alert.showAlertDialog(Register.this, "Notifikasi Sms", "Sms Gagal Dikirim ,Adb Gagal Didaftarkan...", false); e.printStackTrace(); } } } String phoneNo = "081210997334" String sms = "Android Aktivasi ADB ,atas nama: " + editTextNAMA_ADB.getText().toString() + " ,no.adb: " + editTextNOMOR_KONTAK.getText().toString() + " ,no.kadis: " + editTextNOMOR_HP_KADIS.getText().toString() + ":Bls dngn mengetik ,cth:ANDROID APPROVE NO_HP_ADBNYA" try { SmsManager smsManager = SmsManager.getDefault(); smsManager.sendTextMessage(phoneNo, null, sms, null, null); alert.showAlertDialog(Register.this, "Notifikasi Sms", "Sms Terkirim...", false); } catch (Exception e) { alert.showAlertDialog(Register.this, "Notifikasi Sms", "Sms Gagal Dikirim...", false); e.printStackTrace(); } }\n\n', 'ANDRE', '2017-12-08', 1, 0, 'android-security-1.jpg'),
(2, 'Menampilkan data oracle sebagai json antara android dan php', 'Ngomong-ngomong secara pribadi ane bertanya-tanya dalam hati, apa sih bedanya format xml dan json utk parsing data ke android ?\r\n\r\ntrus fungsi php ke mysql dan oraclenya perbedaan yg spesifiknya gmn ? Oke langsung z deh gini codingnya om ... ?? Copy dan buat sebuah file baru "namakan saja oci_connect.php" lalu save dan coba buka di browser\r\n\r\n<code>\r\n$con = oci_connect(''ANDRE'', ''ora_off_05'', ''(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))\r\n\r\n(CONNECT_DATA = (SERVICE_NAME = orcl) (SID = orcl)))'');\r\n    if (!$con)\r\n    {\r\n    $e = oci_error();\r\n        trigger_error(htmlentities($e[''message''], ENT_QUOTES), E_USER_ERROR);\r\n        }\r\n        $id = $_GET[''id''];\r\n        $parsing = "SELECT * FROM SETUP_KAB WHERE NO_PROP=''$id''";\r\n               $stid = oci_parse($con, $parsing);\r\n                   oci_execute($stid);\r\n                    $result = array();\r\n                    while($row = oci_fetch_array($stid, OCI_ASSOC+OCI_RETURN_NULLS)){\r\n                    array_push($result,array(\r\n                    "NO_PROP"=>$row[''NO_PROP''],\r\n                    "NO_KAB"=>$row[''NO_KAB''],\r\n                    "NAMA_KAB"=>$row[''NAMA_KAB'']\r\n                    }\r\n                echo json_encode(array(''result''=>$result));\r\n        oci_free_statement($stid);\r\n    oci_close($con);\r\n</code>\r\n\r\nOke done.... :)', 'ANDRE', '2017-11-15', 1, 0, 'filemaker-json-functions.jpg'),
(3, 'Membuat Splashcreen di android', 'Selama 2 minggu fight untuk IAK (Indonesia Android Kejar) baru bisa nulis lagi gan ,ane mau bagiin cara buat splashcreen di android yg ane terapin dalam final project di udacity level intermediate kebetulan ane terpilih 1 dr jakarta.\r\nOk dah langsung z buat class baru ,nih dy codingnya\r\n\r\n<code>\r\npublic class SplashScreen extends BaseActivity {\r\n    private ImageView imgSplash;\r\n    @Override\r\n    protected void onCreate(Bundle savedInstanceState) {\r\n        super.onCreate(savedInstanceState);\r\n             setContentView(R.layout.activity_splash_screen);\r\n                    ActionBar actionBar = getSupportActionBar();\r\n                    actionBar.setDisplayHomeAsUpEnabled(false);\r\n                    actionBar.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#333333")));\r\n                    actionBar.setTitle(Html.fromHtml("Welcome To The Movies"));\r\n                     getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);\r\n                      final android.app.AlertDialog alertDialog = new android.app.AlertDialog.Builder(this).create();\r\n                 imgSplash = (ImageView) findViewById(R.id.imgSplash);\r\n                     AnimationSet animation = new AnimationSet(true);\r\n                         animation.addAnimation(new AlphaAnimation(0.0F, 1.0F));\r\n                             animation.addAnimation(new ScaleAnimation(0.0f, 1, 0.0f, 1, Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF, 0.5f)); // Change args as desired\r\n                         animation.setDuration(5500);\r\n                     imgSplash.startAnimation(animation);\r\n              new CountDownTimer(5000, 1000) {\r\n            public void onTick(long millisUntilFinished) {\r\n            }\r\n            public void onFinish() {\r\n                Intent i = new Intent(SplashScreen.this, MovieActivity.class);\r\n                startActivity(i);\r\n                finish();\r\n            }\r\n        }\r\n      .start();\r\n    }\r\n}\r\n</code>\r\n\r\ndan ini untuk layout xmlnya\r\n\r\n<code>\r\n<?xml version="1.0" encoding="utf-8"?>\r\n<android.support.constraint.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"\r\n    xmlns:app="http://schemas.android.com/apk/res-auto"\r\n    xmlns:tools="http://schemas.android.com/tools"\r\n    android:layout_width="match_parent"\r\n    android:layout_height="match_parent"\r\n    android:background="@drawable/udacity"\r\n    android:orientation="vertical"\r\n    android:gravity="center"\r\n   >\r\n\r\n    <TextView\r\n        android:layout_width="wrap_content"\r\n        android:layout_height="wrap_content"\r\n        android:text="Developer BY developerpdak@gmail.com"\r\n        android:textColor="#FFF"\r\n        app:layout_constraintBottom_toBottomOf="parent"\r\n        app:layout_constraintLeft_toLeftOf="parent"\r\n        app:layout_constraintRight_toRightOf="parent"\r\n        app:layout_constraintTop_toTopOf="parent" />\r\n\r\n\r\n        <ImageView android:id="@+id/imgSplash" android:layout_width="wrap_content" android:layout_height="wrap_content" android:scaleType="fitXY" android:src="@drawable/iconudacity" />\r\nandroid.support.constraint.ConstraintLayout>\r\n\r\n\r\n</code>', 'ANDRE', '2017-11-15', 1, 0, 'splashscreendefault.jpg'),
(4, 'Instal oracle client 12 di xampp PHP 5.6 pada windows 10 64 bit', 'Buka file php.ini yang terdapat di folder c:\\xampp\\php ,control f oci,\r\nextension=php_oci8_12c.dll  ; Use with Oracle Database 12c Instant Client\r\n;extension=php_openssl.dll\r\n;extension=php_pdo_firebird.dll\r\nextension=php_pdo_mysql.dll\r\nextension=php_pdo_oci.dll\r\n\r\nHilangkan tanda semi colon ; di depan pada posisi oci_8 dan pdo_oci\r\nBuka folder C:\\instantclient_12_2 ( sesuaikan path dimana anda menginstal oracle client) ,copy semua file lalu pastekan ke dalam folder C:\\xampp\\apache\\bin\r\nRestart service apache dan xampp ,refresh program anda harusnya sukses. Silahkan cek http://localhost/dashboard/phpinfo.php control f oci8 harusnya sudah enable ,atau koneksi dari toad.', 'ANDRE', '2017-11-08', 1, 0, '0814.sdt-oracle-java-android.jpg'),
(5, 'Import Library Di Android', 'Buka build.gradle(Module:App) tambahkan\r\n\r\n<code>\r\ncompile ''com.android.support:design:23.2.0'' \r\n</code>\r\n\r\n,lalu lihat dikanan atas Sync Now ,tunggu dan rebuild apk.', 'ANDRE', '2017-11-16', 1, 0, 'android-suit-112011.jpg'),
(6, 'Cara konek oracle ke ip server dengan command prompt', 'Ane rasa sebagai adb yg selalu haus dengan query ,kita smw sangat membutuhkan cara ini.\r\n\r\nUntuk itu sekalian buat catatan ane juga sih ,ane tulis z sekalian biar sekalian bisa berbagi bagi yg butuh.\r\n\r\nBuka cmd lalu ketikkan script berikut\r\n\r\n<code>\r\nsqlplus user_shemanya/passwordnya_apa@ipnya_berapa/servicenamenya_apa\r\n</code>', 'Andre', '2017-11-21', 1, 0, 'sqlplus.jpg'),
(8, 'Migrasi database oracle ke mysql', 'Download mysql yog, buka sebuah koneksi.\n\nPilih tools pada toolbar execute sql script ,tentukan ke database mana file ini akan di import. Pilih browse file dan pilih file .sql yang akan di import, Tunggu hingga selesai ,dan tara...</p>\n\nData berhasil di import gan :)\n', 'Andre', '2017-12-08', 1, 0, 'dp4.png'),
(9, 'Innovation In Android Technology', 'Source code website ,api &amp; android project Android Project (native programming) https://github.com/blackbeltandre/seminaramik (java + mysql) Backend web mobile apps (Framework programming)(codeigniter 3.2 + mysql): http://backend.amikmobile.tulisandigital.com/ demo* user : andre password : andre Web Service &amp; API (native programming) (PHP 5 + mysql) http://amikmobile.tulisandigital.com/api/ Materi : http://amikmobile.tulisandigital.com/materi.pptx APK Project http://amikmobile.tulisandigital.com/AMIK.apk Referensi * https://developer.android.com/develop/index.html\n', 'Andre', '2017-12-08', 1, 0, 'infotechlogo.png'),
(12, 'Upload project ke github', 'Saya asumsikan sudah punya akun di github (https://github.com/) Download tools git disini dan install (https://git-scm.com/downloads) Klik kanan project yg ingin di push lalu pilih git bash here (akan membuka aplikasi git), pada git tools ketikkan git config --global user.name "isi username anda" git config --global user.email "isi email github anda" git init git add * kalau ada command&nbsp; seperti ini : The following paths are ignored by one of your .gitignore files: build Use -f if you really want to add them. ganti jadi git add * -f supaya semua file pada project di push git commit -m "Seminar amik mbp" (ganti seminar amik mbp sesuai keterangan project anda) git remote add origin https://github.com/blackbeltandre/seminaramik.git kalau ada error kayak gini fatal: remote origin already exists. hapus dulu yg lama ,krn sudah pernah ada sebelumnya caranya git remote rm origin lalu ulangin git remote add origin https://github.com/blackbeltandre/seminaramik.git dan git pull origin master git push origin master *done\n', 'Andre', '2017-12-08', 1, 0, 'git.png'),
(13, 'Contoh Proposal Seminar IT', 'Hal : Proposal Seminar It Jakarta, 8 Desember 2017 Kepada Yth, Bapak / Ibu Di tempat Dengan Hormat, Puji dan syukur kita panjatkan kepada Tuhan yang Maha Esa. Karena lindungan dan hidayahnya kita bisa melakukan berbagai inovasi teknologi. Berdasarkan pesatnya perkembangan zaman ,khususnya di bidang teknik informatika demikian kami menawarkan kerjasama untuk mengadakan sebuah seminar di kampus Stikom Medan, jika bapak atau ibu berminat dengan proposal penawaran kami, kami menunggu kabar dari bapak atau ibu melalui email atau telpon yang sudah tertera ,atas perhatiian dan kerja samanya kami ucapkan terima kasih. Hormat Kami Narasumber dan Developer Andreas Sahabat Lumban Batu S.Kom Website : www.tulisandigital.com Email : developerpdak@gmail.com Mobile Phone : +62-85206451636 Team Leader Agusman Yulianto,S.Si,M.Kom,M.Inf.Tech Email : agusmany@yahoo.com Mobile Phone : +62 812-8940-9633 Wakil Ketua II Bidang Pengembangan Bisnis dan Adm Umum Dr. (c)Juli Yanto, S.Kom, M.Kom Email : julitomoko@gmail.com Mobile Phone : +62 852-1004-007 I. PENDAHULUAN Dalam perkembangan global saat ini, sudah banyak fenomena-fenomena yang terjadi, begitupun dengan Indonesia yang dimana semua permasalahannya semakin kompleks, terutama dalam hal teknologi. Di tengah pasar bebas yang cenderung menciptakan kompetisi ketat antar individu yang mendorong kita untuk memiliki skill yang menunjang dalam penciptaan lapangan pekerjaan , dibutuhkan kemampuan untuk bisa menguasai Teknologi yang semakin hari semakin berkembang dan semakin canggih . Oleh karena itu, salah satu upaya yang dilakukan untuk memanfaatkan perkembangan teknologi secara optimal adalah dengan diselenggarakan seminar informasi dan teknologi yang tentunya sangat dibutuhkan. Selain itu kita dapat membekali diri dengan keterampilan dalam bidang Android, yaitu dunia yang penuh informasi. Dimana yang dunia kerja mayoritas membutuhkan orang yang cerdas memiliki kemampuan dalam bidang teknologi. Melalui adanya seminar ini, dapat membantu kesulitan - kesulitan mahasiswa dalam menciptkan sebuah program berbasis android ,pengoperasian dan segala sesuatu yang berhubungan dengan informasi dan teknologi dalam upaya untuk menambah kemampuan. Dengan diselenggarakan kegiatan yang bertajuk Seminar Android Development yang dapat berguna bagi mahasiswa yang tidak diajarkan maupun yang tidak diajarkan dalam perkuliahan, yang dapat dijadikan sebagai bekal tambahan di dunia kerja yang persaingannya semakin ketat . II. BENTUK KEGIATAN 1. Pembahasan tentang pengetahuan android 2. Memberikan cara bagaimana pembuatan android secara best practice III. TUJUAN KEGIATAN Tujuan diselenggarakan Seminar Informasi dan Teknologi ini adalah untuk : 1. Salah satu upaya untuk mensukseskan program kerja lululusan dari Himpunan Mahasiswa Teknik Informatika dan Sistem Informasi Komputer di Indonesia 2. Meningkatkan Sumber Daya Manusia yang Handal di bidang Informasi dan Teknologi 3. Mendorong minat mahasiswa dan mahasiswi untuk lebih mendalami Informasi dan Teknologi yang semakin Vital 4. Menciptakan mahasiswa dan mahasiswi IT yang berkualitas dan kreatif sebagai bekal dunia kerja 5. Mengoptimalkan fungsi teknologi dan Informasi . 6. Meningkatkan pengetahuan mahasiswa dan mahasiswi tentang android development IV . NAMA DAN TEMA KEGIATAN Kegiatan ini bernama Seminar Informasi dan Teknologi yang bertema Seminar Android Development V . PESERTA Peserta kegiatan Informasi Dan Teknologi adalah mahasiswa/dosen ,praktisi it dan masyarakat umum dan ditambah panitia pengurus Himpunan Mahasiswa Stikom Medan . Fasilitas peserta :  Seminar Kit  Snack-Lunch  Sertifikat VI . WAKTU DAN TEMPAT Kegiatan ini akan dilaksanakan pada :  Hari/tanggal : Menyesuaikan  Waktu : Pk. 08. 00 WIB s/d Selesai  Tempat : Stikom Medan VII . SUSUNAN ACARA WAKTU KEGIATAN 08.00-09.00 Registrasi Peserta 09.00-09.15 Pembukaan (MC) dan Sambutan-sambutan 09.15-11.30 Materi dan Simulasi &lsquo;Android Development&rsquo; 11.30-12.00 Tanya Jawab dan Door Prize 12.00-12.30 Penutup VII . SUSUNAN KEPANITIAAN Pembicara : Andreas Sahabat Lumban Batu S.Kom VIII. ANGGARAN DANA Acara  Transportasi Pembicara  Penginapan Pembicara  Honor Pembicara X . PENUTUP Atas nama keluarga besar STTI I-Tech Jakarta, saya selaku narasumber mengharapkan dukungan moril maupun materiil untuk kesuksesan kegiatan seminar informasi dan teknologi ini. Semoga kegiatan ini terselenggara sesuai dengan harapan kami dan keinginan kita dan semoga Tuhan Yang Maha Esa berkenan meridhoi kita, amin . Atas perhatian dan kerjasamanya kami ucapkan terima kasih. Jakarta , 8 Desember 2017 Pembicara Andreas Sahabat Lumban Batu S.Kom Menyetujui Wakil Ketua II Bidang Pengembangan Bisnis dan Adm Umum Dr. (c) Juli Yanto, S.Kom, M.Kom Team Leader Agusman Yulianto,S.Si,M.Kom,M.Inf.Tech\n', 'Andre', '2017-12-08', 1, 0, 'seminar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `asset_user`
--

CREATE TABLE `asset_user` (
  `id` int(4) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level_login` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(8) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL,
  `tempat_lahir` varchar(225) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `no_hp`, `email`) VALUES
(24, 'DAHYU', 'BANDUNG', '2018-01-26', '0852222222', 'DDDDD@YAHOO.COM'),
(2, 'ANDRE', 'MEDAN', '1992-02-25', '085206451632', 'ME@GMAIL.COM'),
(3, 'AL', 'MEDAN', '1991-11-25', '085206451622', 'AL@GMAIL.COM'),
(4, 'IMEL', 'JAKARTA', '1995-11-18', '085206451645', 'MEL@YAHOO.COM'),
(5, 'IRINA', 'SURABAYA', '1995-11-21', '085206581645', 'IRIN@GMAIL.COM'),
(8, 'ERNI PRASTIKA LAIA', 'NIAS', '1997-08-29', '082277841229', 'ERNIPRASTIKA09@GAMAIL.COM'),
(9, 'ERNI PRASTIKA LAIA', 'NIAS', '1997-08-29', '082277841229', 'ERNIPRASTIKA09@GMAIL.COM'),
(10, 'PAULUS SUTANTO BANJARNAHOR', 'MEDAN', '1997-10-27', '082163631132', 'PAULUS.SUTANTO27@GMAIL.COM'),
(11, 'RISMA TARIGAN', 'MOMPA', '1996-01-08', '082168532315', 'RISMATARIGAN96@GMAIL.COM'),
(12, 'FITRI SIMAMORA', 'DOLOKSANGGUL', '1995-03-03', '082168076511', 'FITRISIMAMORA95@GMAIL. COM'),
(13, 'SUWI SUDARTO SIMALANGO', 'MANDAI ANGIN', '1995-07-27', '082384098781', 'JONNERSIMALANGO21@GMAIL. COM'),
(14, 'DELIMA SIMANJUNTAK', 'SIPAHUTAR', '1997-01-09', '082274429256', 'DELIMASIMANJUNTAK179@GMAIL.COM'),
(15, 'RIMAWATI SIBAGARIANG', 'SITINJO', '1995-10-20', '082370178266', 'RIMAWATIDEVIANA@BAGARIANG.COM'),
(16, 'LUSY YANTI', 'SIBAGANDING', '1996-06-28', '081249100182', 'L.YSIMAMORA06@YAHOO.COM'),
(17, 'JENNI SELVIA BR LUBIS', 'TANJUNG BARUS', '1997-01-05', '082213306746', 'JENNISELVIA5@GMAIL. COM'),
(18, 'LUSIANA BR SIHORANG', 'KABANJAHE', '1995-08-29', '082297699966', 'LUSIANASIHOTANG404@YAHOO.COM'),
(20, 'TIORI VALERIA SIMARMATA', 'TK.SAROHA', '1995-01-27', '082299689522', 'TIORIVALERIA@GMAIL.COM'),
(21, 'MUNAWAR', 'SEURADEUK,', '1996-09-01', '081269240959', 'MUNAWARMONAAJHA96@GMAIL.COM'),
(22, 'APRILIANA FRANSISCA GULO', 'MEDAN', '1998-04-08', '081375721398', 'APRILIANA224@GMAIL.COM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `andro_user`
--
ALTER TABLE `andro_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_user`
--
ALTER TABLE `asset_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `asset_user`
--
ALTER TABLE `asset_user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
