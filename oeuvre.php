<?php
session_start();
require 'header.php';
require 'bdd.php';

$bdd = connexion();
$requete = $bdd->prepare("SELECT * FROM oeuvres WHERE id = ?");
$requete->execute([$_GET['id']]);
$oeuvre = $requete->fetch();

// Si l'URL ne contient pas d'id, on redirige sur la page d'accueil
if (empty($_GET['id'])) {
    header('Location: index.php');
    exit;
}

// Si aucune oeuvre trouvé, on redirige vers la page d'accueil
if (!$oeuvre) {
    header('Location: index.php');
    exit;
}
//  Affichage du message flash s’il existe
if (isset($_SESSION['flash'])) {
    $type = $_SESSION['flash']['type']; // 'success' ou 'error'
    $message = htmlspecialchars($_SESSION['flash']['message']);
    echo "<div class='flash-message {$type}'>{$message}</div>";
    unset($_SESSION['flash']); // Supprime après affichage
}
?>

<article id="detail-oeuvre">
    <div id="img-oeuvre">
        <img src="<?= $oeuvre['image'] ?>" alt="<?= $oeuvre['titre'] ?>">
    </div>
    <div id="contenu-oeuvre">
        <h1><?= $oeuvre['titre'] ?></h1>
        <p class="description"><?= $oeuvre['artiste'] ?></p>
        <p class="description-complete">
            <?= $oeuvre['description'] ?>
        </p>
    </div>
</article>

<?php require 'footer.php'; ?>