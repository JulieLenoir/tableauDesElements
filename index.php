<?php
include 'bdd/connect.php';

include 'template/header.php';








$erreur = isset($_GET['erreur']) ? $_GET['erreur'] : "";




$page = isset($_GET['page']) ? $_GET['page'] : "home";

switch ($page) {
        // PAGE HOME : AFFICHAGE DU TABLEAU 
    case 'home':
        include 'views/table.php';
        break;

        // AU CLIC D4UNE CASE AFFICHAGE POP UP (page dans views) et AFFICHAGE TABLEAU
    case 'popup':
        include 'views/popup.php';
        include 'views/table.php';
        break;

        // PAGE CATEGORIE AFFICHAGE DES INFOS DE LA CATEGORIE CONCERNEE - lien a href dans le footer
    case 'categorie':
        include 'views/categorie.php';
        break;

        // FICHIER TRAITEMENT BARRE DE RECHERCHE - lien dans le header au niveau du formulaire barre de recherche
    case 'recherche':
        include 'traitement/recherche.php';
        break;

        // FICHIER DETAIL ATOME - lien dans dans popup.php et dans categorie.php
    case 'detailAtome':
        include 'views/detailAtome.php';
        break;


    default:
        echo "erreur 404";
        break;
}



include 'template/footer.php';
