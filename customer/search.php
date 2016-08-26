<?PHP 
    include_once("connection.php"); 
    if( isset($_POST['txtNamaobat'])) { 
        $username = $_POST['txtNamaobat'];
        
        $query = "SELECT * FROM obat AS o JOIN kelompok_obat as ko ON o.kd_kelompok = ko.kd_kelompok WHERE o.nama_obat = '$username'"; 
        
        $result = mysqli_query($conn, $query);
        
        while($row = mysqli_fetch_assoc($result)){
            $data[] = $row;
        }
        echo json_encode($data);

    } 
?>