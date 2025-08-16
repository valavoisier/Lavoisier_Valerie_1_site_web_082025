<?php 
session_start();
require 'header.php'; 
if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

if (isset($_SESSION['flash']) && $_SESSION['flash']['type'] === 'error') {
    $type = $_SESSION['flash']['type'];
    $message = htmlspecialchars($_SESSION['flash']['message']);
    echo "<div class='flash-message {$type}'>{$message}</div>";
    unset($_SESSION['flash']);
}
?>
<form action="traitement.php" method="POST">
    <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
    <div class="champ-formulaire">
        <label for="titre">Titre de l'œuvre</label>
        <input type="text" name="titre" id="titre" placeholder="Saisissez le titre de l'œuvre" value="<?= htmlspecialchars($_SESSION['old']['titre'] ?? '') ?>">
    </div>
    <div class="champ-formulaire">
        <label for="artiste">Auteur de l'œuvre</label>
        <input type="text" name="artiste" id="artiste" placeholder="Nom de l'artiste" value="<?= htmlspecialchars($_SESSION['old']['artiste'] ?? '') ?>">
    </div>
    <div class="champ-formulaire">
        <label for="image">URL de l'image</label>
        <input type="url" name="image" id="image" placeholder="https://exemple.com/image.jpg" value="<?= htmlspecialchars($_SESSION['old']['image'] ?? '') ?>">
    </div>
    <div class="champ-formulaire">
        <label for="description">Description</label>
        <textarea name="description" id="description" placeholder="Décrivez l'œuvre" minlength="3"><?= htmlspecialchars($_SESSION['old']['description'] ?? '') ?></textarea>
    </div>

    <input type="submit" value="Valider" name="submit">
</form>

<?php 
unset($_SESSION['old']);
require 'footer.php'; ?>

