<?php
include 'conn.php';
$id = mysqli_escape_string($connect, $_POST['id']);

$sql = 'delete from tpersonne where id=' . $id . '';
$connect->query($sql);
?>
