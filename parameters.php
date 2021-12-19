<?php
/* 
 * .env fájl tartalmának feldolgozása, ha van!
 * 
 */
if(file_exists(".env")){
    $config = parse_ini_file(".env");
} else {
    $config["host"] = "localhost";
    $config["user"] = "root";
    $config["password"] = "";
    $config["database"] = "adventikalendarium";
}
