<?php

// ---------------------- RECUPERATION GET --------------------------------

$pageCategorie = isset($_GET['id']) ? ($_GET['id']) : NULL;


// ---------------------- REQUETE POUR INFOS SUR LES ATOMES EN FONCTION DE LA CATEGORIE 

$requeteAffichageCategorie = "SELECT categorie.id_categorie, categorie.nom_categorie, categorie.couleur_categorie, atome.nom, atome.symbole, 
atome.numero, atome.masse_atomique,atome.id_categorie, atome.electronegativite, 
atome.configuration_electronique, atome.etat_oxydation
FROM atome LEFT JOIN categorie ON atome.id_categorie = categorie.id_categorie 
WHERE atome.id_categorie= '$pageCategorie'";

$resultatCategorie = $connexion->query($requeteAffichageCategorie);
$categorie = $resultatCategorie->fetchAll(PDO::FETCH_OBJ);

?>


<!-- // ---------------------- AFFICHER LES ATOMES EN FONCTION DE LA CATEGORIE  -->

<div id="cadreCategorie">

    <?php
    foreach ($categorie as $value) {
    ?>

        <h2 class="titrePageCategorie" style="color:#<?php echo $value->couleur_categorie ?>;"><?php echo $value->nom_categorie ?></h2>

    <?php
        break;
    }
    ?>

    <div class="atomeParcategorie">

        <?php
        foreach ($categorie as $value) {
        ?>

            <a href="index.php?page=detailAtome&id=<?php echo $value->numero ?>">
                <div class="elementPageCategorie" style="background-color:#<?php echo $value->couleur_categorie ?> ;">
                    <div class="haut">
                        <p class="numeroPageCategorie"><?php echo $value->numero ?></p>
                        <p class="masse_atomiquePageCategorie"><?php echo $value->masse_atomique ?></p>
                    </div>
                    <h3 class="symbolePageCategorie"><?php echo $value->symbole ?> </h3>
                    <h4 class="nomPageCategorie"><?php echo $value->nom ?></h4>
                </div>
            </a>

        <?php
        }
        ?>

    </div>
</div>