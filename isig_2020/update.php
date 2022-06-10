<?php
include 'conn.php';
$id = mysqli_escape_string($connect, $_POST['id']);
$nom = mysqli_escape_string($connect, $_POST['nom']);
$adresse = mysqli_escape_string($connect, $_POST['adresse']);
$telephone = mysqli_escape_string($connect, $_POST['telephone']);
$sql =
    "update tpersonne set nom='" .
    $nom .
    "',adresse='" .
    $adresse .
    "',telephone='" .
    $telephone .
    "'where id=" .
    $id .
    '';
$connect->query($sql);
echo 'modifier avec succcess';
?>
