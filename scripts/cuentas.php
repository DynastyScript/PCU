<?php
include 'scripts/conexion.php';
$username = $_SESSION['usuario'];
$query = mysqli_query($con,"SELECT * FROM cuentas WHERE Nombre = '$username'");
 while($row = mysqli_fetch_assoc($query))
 {
     $nombre = $row['Nombre'];
 $skin = $row['Ropa'];
 $vida = $row['Vida'];
 $llave1 = $row['Llave1'];
 $llave2 = $row['Llave2'];
 $chaleco = $row['Chaleco'];
 $banco = $row['Banco'];
 $muertes = $row['Muertes'];
 $edad = $row['Edad'];
 $asesinatos = $row['Asesinatos'];
 $pfaccion = $row['Faccion'];
 $prango = 'Rango'.$row['Rango'];
 $trabajo = $row['Trabajo'];
 $dinero = $row['Dinero'];
 $reputacion = $row['Reputacion'];
 if($row['Genero'] == 0)
 {
 $genero = 'Masculino';
 }
 else if($row['Genero'] == 1)
 {
 $genero = 'Femenino';
 }
 if($row['Certificado'] == 0)
 {
 $certificado = 'NO CERTIFICADO';
 }
 else if($row['Certificado'] == 1)
 {
 $certificado = 'CERTIFICADO';
 }
 if($row['Admin'] == 0)
 {
 $admin = 'Usuario';
 }
 else if($row['Admin'] == 1)
 {
 $admin = 'STAFF';
 }
 else if($row['Admin'] == 20)
 {
 $admin = 'Dueño';
 }
 if($row['Trabajo'] == 0)
 {
 $trabajo = 'Ninguno';
 }
 else if($row['Trabajo'] == 1)
 {
 $trabajo = 'Camionero';
 }
 else if($row['Trabajo'] == 2)
 {
 $trabajo = 'Repartidor';
 }
 else if($row['Trabajo'] == 3)
 {
 $trabajo = 'Pescador';
 }

 if($pfaccion == 0)
 {
 $faccion = 'Ninguna';
 $rango = '-';
 }
 else
 {
 $fquery = mysqli_query($GLOBALS["___mysqli_ston"], "SELECT * FROM facciones WHERE ID = '$pfaccion'");
 while($row = mysqli_fetch_assoc($fquery))
 {
     $faccion = $row['Nombre'];
 $rango = $row[$prango];
 }
}
}
?>
