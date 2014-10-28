<?php

include_once 'database.php';

$username = $_POST['username'];
$password = $_POST['password'];

$stmt = $DBH->prepare("INSERT INTO users (username, password) VALUES  ('" . $username . "' , '" . $password ."')");
    


    try {
        $stmt->execute();
        echo "successfully added user";
    } catch (PDOException $e) {
        echo "couldnt connect";
    }
