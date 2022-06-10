<?php
$connect = new mysqli('localhost', 'root', '', 'isig');
if ($connect) {
} else {
    echo 'Connexion echouee';
    exit();
}
?>
