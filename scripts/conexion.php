
<?php
$hostsql = 'localhost';
$usersql = 'root';
$passsql = '';
$dbsql = 'poplife';
$con =($GLOBALS["___mysqli_ston"] = mysqli_connect($hostsql, $usersql, $passsql))or die ('Ha fallado la conexión: '.((is_object($GLOBALS["___mysqli_ston"])) ? mysqli_error($GLOBALS["___mysqli_ston"]) : (($___mysqli_res = mysqli_connect_error()) ? $___mysqli_res : false)));

((bool)mysqli_query($GLOBALS["___mysqli_ston"], "USE " . $dbsql))or die ('Error al seleccionar la Base de Datos: '.((is_object($GLOBALS["___mysqli_ston"])) ? mysqli_error($GLOBALS["___mysqli_ston"]) : (($___mysqli_res = mysqli_connect_error()) ? $___mysqli_res : false)));
mysqli_set_charset($con,'utf8');
?>
