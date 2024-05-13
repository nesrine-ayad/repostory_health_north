<?php
$pdo = new PDO('mysql:host=localhost;dbname=health_north', 'root', '');

function getPrescriptions() {
    global $pdo;
    $stmt = $pdo->query('SELECT * FROM Prescription');
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Autres fonctions CRUD à implémenter...

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    header('Content-Type: application/json');
    echo json_encode(getPrescriptions());
}
?>
