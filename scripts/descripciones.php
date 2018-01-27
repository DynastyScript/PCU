<?php
include 'scripts/conexion.php';
$username = $_SESSION['usuario'];
$query = mysqli_query($con,"SELECT * FROM descripciones WHERE Nombre = '$username'");
 while($row = mysqli_fetch_assoc($query))
 {
 $nombre = $row['Nombre'];
 $fisica = $row['Fisica'];
 $psiquica = $row['Psiquica'];
 $historia = $row['Historia'];
 }
?>
