<?php
include 'scripts/conexion.php';
$query = mysqli_query($con,"SELECT * FROM devlog");
 while($row = mysqli_fetch_assoc($query))
 {
 $id = $row['ID'];
 $titulo = $row['Titulo'];
 $contenido = $row['Contenido'];
 $staff = $row['Staff'];
 }
?>
