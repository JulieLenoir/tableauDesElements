<?php

// ---------------------- RECUPERATION POST --------------------------------

$recherche = isset($_POST['quoi']) ? $_POST['quoi'] : NULL;


// ---------------------- REQUETE POUR TROUVER L'ATOME RECHERCHÉ -------------

$requeteRecherche = "SELECT id FROM atome  WHERE nom='$recherche' OR slug='$recherche' OR symbole='$recherche'";
$resultatRecherche = $connexion->query($requeteRecherche);
$listeRecherche = $resultatRecherche->fetchAll(PDO::FETCH_OBJ);


// ---------------------- REDIRECTION VERS LE POPUP ------------------------

if (isset($listeRecherche[0])) {
    header('location:index.php?page=popup&id=' . $listeRecherche[0]->id);
} else {
    header('location:index.php');
};
