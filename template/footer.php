<?php
// RECUPERATION DES DONNEES DE TABLE CATEGORIES POUR FAIRE LE MENU

$requeteCategorie = "SELECT id_categorie, nom_categorie, couleur_categorie FROM categorie";
$resultatCategorie = $connexion->query($requeteCategorie);
$listeCategorie = $resultatCategorie->fetchAll(PDO::FETCH_OBJ);

?>


<!-- AFFICHAGE DES CATEGORIES - LIEN ENVOIE VERS PAGE CATEGORIE DANS VIEWS -->

<footer>

    <nav>
        <ul>
            <?php
            foreach ($listeCategorie as $value) { ?>
                <a href="index.php?page=categorie&id=<?php echo $value->id_categorie; ?>">
                    <li style="background-color:#<?php echo $value->couleur_categorie; ?>">
                        <h4><?php echo $value->nom_categorie; ?></h4>
                    </li>
                </a>
            <?php
            } ?>
        </ul>
    </nav>
</footer>

</body>

</html>