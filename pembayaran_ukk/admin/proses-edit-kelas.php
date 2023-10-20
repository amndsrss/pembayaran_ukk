<?php

$id_kelas = $_GET['id_kelas'];
$nama_kelas = $_POST['nama_kelas'];
$kopetensi_keahlian = $_POST['kopetensi_keahlian'];

include'../koneksi.php';
$sql = "UPDATE kelas SET nama_kelas='$nama_kelas', kopetensi_keahlian='$kopetensi_keahlian' WHERE id_kelas='$id_kelas'";
$query = mysqli_query($koneksi, $sql);
if($query){
	header("Location:?url=kelas");
}else{
	echo"<script>alert('Maaf Data Tidak Tersimpan'); window.location.assign('?url=kelas');</script>";
}