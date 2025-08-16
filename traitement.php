<?php
//vérifier que les champs ne sont pas vides
//vérifier que la description fait au moins 3 caractères
//vérifier que l'URL de l'image est valide (formatlien https://)
//utiliser htmlspecialchars(); contre failles XSS


session_start();
require 'bdd.php';

// Vérification du jeton CSRF
if (!isset($_POST['csrf_token']) || $_POST['csrf_token'] !== $_SESSION['csrf_token']) {
    die('Erreur CSRF : requête non autorisée.');
}

// Fonction de nettoyage
function sanitizedInput($data)
{
    return htmlspecialchars(trim($data));
}

if (isset($_POST['submit'])) {
    $titre = sanitizedInput($_POST['titre']);
    $artiste = sanitizedInput($_POST['artiste']);
    $description = sanitizedInput($_POST['description']);
    $image = sanitizedInput($_POST['image']);

    // Vérifications
    $erreurs = [];

    if (empty($titre) || empty($artiste) || empty($description) || empty($image)) {
        $erreurs[] = "Tous les champs doivent être correctement remplis.";
    }

    if (strlen($description) < 3) {
        $erreurs[] = "La description doit contenir au moins 3 caractères.";
    }

    if (!filter_var($image, FILTER_VALIDATE_URL) || !str_starts_with($image, 'https://')) {
        $erreurs[] = "L'URL de l'image doit être valide et commencer par https://";
    }
    $_SESSION['old'] = [
        'titre' => $titre,
        'artiste' => $artiste,
        'image' => $image,
        'description' => $description
    ];
    // Si erreurs → message flash rouge
    if (!empty($erreurs)) {
        $_SESSION['flash'] = [
            'type' => 'error',
            'message' => implode(" ", $erreurs)
        ];
        header('Location: ajouter.php');
        exit;
    }

    // Connexion à la base
    $bdd = connexion();

    // Insertion
    $requete = $bdd->prepare("INSERT INTO oeuvres (titre, artiste, description, image) VALUES (?, ?, ?, ?)");
    $requete->execute([$titre, $artiste, $description, $image]);

    // Message flash vert
    $_SESSION['flash'] = [
        'type' => 'success',
        'message' => "L'œuvre « $titre » a été correctement ajoutée dans la base de données."
    ];

    // Redirection vers la fiche
    header('Location: oeuvre.php?id=' . $bdd->lastInsertId());
    exit;
}
