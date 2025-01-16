<?php
// Connexion à la base de données
$dsn = 'mysql:host=mariadb;dbname=project_db;charset=utf8';
$username = 'user';
$password = 'password';

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('Connexion échouée : ' . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TP Docker</title>
    </head>
    <body>
        <h1>Bienvenue sur notre site web !</h1>
        <h2>Liste des utilisateurs</h2>
        <h2>Image :</h2>
        <img src="data:image/jpeg;base64,<?= base64_encode(file_get_contents('assets/imgs/image.jpg'));?>" alt="Exemple d'image">
    </body>
</html>