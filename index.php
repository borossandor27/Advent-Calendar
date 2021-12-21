<?php
header('Content-Type: text/html; charset=utf-8');
session_start();
include './parameters.php';
$menu = filter_input(INPUT_GET, "menu", FILTER_SANITIZE_STRING)??"calendar";
require_once './view.php';        // put your code here
?>



