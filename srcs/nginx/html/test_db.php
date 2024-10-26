<?php
$host = 'mariadb'; // MariaDBのサービス名
$dbname = 'my_database';
$user = 'mysql';
$password = 'mysql';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    echo "Connected to MariaDB successfully!";
} catch (PDOException $e) {
    echo "Connection failed!: " . $e->getMessage();
}