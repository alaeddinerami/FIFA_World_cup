<?php


$server = "localhost";
$user = "root";
$pass = "";
$db = "world_cup";


$conn = mysqli_connect($server,$user,$pass,$db);


if(!$conn){
    echo "makhdamaaach";
}
