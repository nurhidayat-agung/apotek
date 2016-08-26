<?php
	include_once("connection.php");
	$query = "SELECT o.kd_obat, o.nama_obat, ko.nama_kelompok, o.satuan FROM obat AS o JOIN kelompok_obat as ko ON o.kd_kelompok = ko.kd_kelompok";
	$result = mysqli_query($conn, $query);
	while($row = mysqli_fetch_assoc($result)){
		$data[] = $row;
	}
	 echo json_encode($data);

?>