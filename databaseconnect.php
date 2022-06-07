<?php

function connect()
{
    $host = 'localhost';
    $dbname = 'testtask';
    $username = 'user';
    $password = 'user';
    try {
        $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $msg = "Connected to $dbname at $host successfully.";
    } catch (PDOException $pe) {
        $msg = "Could not connect to the database $dbname :" . $pe->getMessage();
    }

    return [$conn, $msg];
}