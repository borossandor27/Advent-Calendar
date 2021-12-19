<?php
switch ($menu) {
    case "tetelek":
        include './tetelek.php';
        break;

    default:
        include './calendar.php';
        break;
}