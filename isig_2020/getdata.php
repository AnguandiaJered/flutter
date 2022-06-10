<?php
include 'conn.php';
$rqt = 'select * from tpersonne';
($rqt2 = mysqli_query($connect, $rqt)) or die(mysql_error());
$result = [];
while ($fetchData = $rqt2->fetch_assoc()) {
    $result[] = $fetchData;
}
echo json_encode($result);

?>
