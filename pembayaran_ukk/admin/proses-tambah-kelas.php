<?php

$nama_kelas = $_POST['nama_kelas'];
$kopetensi_keahlian = $_POST['kopetensi_keahlian'];

include'../koneksi.php';
$sql = "INSERT INTO kelas(nama_kelas,kopetensi_keahlian) VALUES('$nama_kelas','$kopetensi_keahlian')";
$query = mysqli_query($koneksi, $sql);
if($query){
	header("Location:?url=kelas");
}else{
	echo"<script>alert('Maaf Data Tidak Tersimpan'); window.location.assign('?url=kelas');</script>";
}
?>