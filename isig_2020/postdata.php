<<?php
include 'conn.php';
$nom = mysqli_real_escape_string($connect, $_POST['nom']);
$adresse = mysqli_real_escape_string($connect, $_POST['adresse']);
$telephone = mysqli_real_escape_string($connect, $_POST['telephone']);

$sql =
    "INSERT INTO tpersonne (nom,adresse,telephone) values ('" .
    $nom .
    "','" .
    $adresse .
    "','" .
    $telephone .
    "')";

$connect->query($sql);


?>
