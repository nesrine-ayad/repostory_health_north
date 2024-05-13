<?php
$pdo = new PDO('mysql:host=localhost;dbname=health_north', 'root', '');

function getPatients() {
    global $pdo;
    $stmt = $pdo->query('SELECT * FROM Patient');
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function createPatient($data) {
    global $pdo;
    $stmt = $pdo->prepare('INSERT INTO Patient (nom, prenom, dateNaissance, numeroSecuSociale, adresse, email, tel, personneContact, medecinTraitant) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)');
    return $stmt->execute([$data['nom'], $data['prenom'], $data['dateNaissance'], $data['numeroSecuSociale'], $data['adresse'], $data['email'], $data['tel'], $data['personneContact'], $data['medecinTraitant']]);
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    header('Content-Type: application/json');
    echo json_encode(getPatients());
} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    if (createPatient($data)) {
        http_response_code(201);
        echo json_encode(['message' => 'Patient créé avec succès']);
    } else {
        http_response_code(500);
        echo json_encode(['message' => 'Impossible de créer le patient']);
    }
}
?>
