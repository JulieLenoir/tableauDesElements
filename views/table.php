<?php

// ---------------------------------- AFFICHAGE TABLE PRINCIPALE ---------------------------------------------
// -----------------------------------------------------------------------------------------------------------


// -------- REQUETES TABLE PRINCIPALE ---------------------------------------------

$requete = "SELECT id, nom, numero, symbole, masse_atomique, is_radioactif FROM atome WHERE id_categorie<>3 AND id_categorie<>4 ";
$resultat = $connexion->query($requete);
$liste = $resultat->fetchAll(PDO::FETCH_OBJ);

$requeteCouleur = "SELECT atome.numero, categorie.couleur_categorie FROM atome LEFT JOIN categorie ON atome.id_categorie = categorie.id_categorie WHERE atome.numero<57 OR atome.numero>71 AND atome.numero<89 OR atome.numero>103";
$resultatCouleur = $connexion->query($requeteCouleur);
$listeCouleur = $resultatCouleur->fetchAll(PDO::FETCH_OBJ);


// -------- AFICHAGE TABLE PRINCIPALE ---------------------------------------------

$table = [
    [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1],
    [1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
];

function affichageTable($bdd, $matrice, $couleur)
{
    for ($k = 0; $k < count($bdd); $k++) {
        for ($i = 0; $i < count($matrice); $i++) {
?>

            <div class="ligne">

                <?php
                for ($j = 0; $j < count($matrice[$i]); $j++) {
                    if ($matrice[$i][$j] == 1) {
                ?>

                        <a href="index.php?page=popup&id=<?php echo $bdd[$k]->id; ?>" class="element" style="background-color:#<?php echo $couleur[$k]->couleur_categorie ?> ;">
                            <div class="haut">
                                <p class="numero"><?php echo $bdd[$k]->numero ?></p>
                                <p class="masse_atomique"><?php echo $bdd[$k]->masse_atomique ?></p>
                            </div>
                            <h3 class="symbole"><?php echo $bdd[$k]->symbole ?> </h3>
                            <h4 class="nom"><?php echo $bdd[$k]->nom ?></h4>
                            <div class="radioactif" style="display: none;"><?php echo $bdd[$k]->is_radioactif ?></div>
                        </a>

                    <?php
                        $k++;
                    } elseif ($matrice[$i][$j] == 2) {
                    ?>

                        <div class="elementLA" style="background-color:#FFBFFF;">
                            <div class="haut">
                                <p class="numero">57 - 71</p>
                                <p class="masse_atomique"></p>
                            </div>
                            <h3 class="symbole"></h3>
                            <h4 class="nom">Lanthanides</h4>
                        </div>

                    <?php
                    } elseif ($matrice[$i][$j] == 3) {
                    ?>

                        <div class="elementLA" style="background-color:#FF99CC;">
                            <div class="haut">
                                <p class="numero">89 - 103</p>
                                <p class="masse_atomique"></p>
                            </div>
                            <h3 class="symbole"></h3>
                            <h4 class="nom">Actinides</h4>
                        </div>

                    <?php
                    } elseif ($matrice[$i][$j] == 4) {
                    ?>

                        <div class="element" id="actif">
                            <div id="actiftexte">Éléments radioactifs</div>
                            <div class="radioactif" style="display: none;">1</div>
                        </div>

                    <?php
                    } else {
                    ?>

                        <div class="vide">
                        </div>

                <?php
                    }
                }
                ?>

            </div>

<?php
        }
    }
};

affichageTable($liste, $table, $listeCouleur);


// ---------------------------------- AFFICHAGES TABLE L / A ---------------------------------------------
// -------------------------------------------------------------------------------------------------------


// -------- REQUETES TABLE LANTHANIDES ---------------------------------------------

$requeteLanthanides = "SELECT id,nom, numero, symbole, masse_atomique, is_radioactif FROM atome WHERE numero>=57 AND numero<=71";
$resultatLanthanides = $connexion->query($requeteLanthanides);
$listeLanthanides = $resultatLanthanides->fetchAll(PDO::FETCH_OBJ);

$requeteCouleurLanthanides = "SELECT atome.numero, categorie.couleur_categorie FROM atome LEFT JOIN categorie ON atome.id_categorie = categorie.id_categorie WHERE atome.numero>56 AND atome.numero<72";
$resultatCouleurLanthanides = $connexion->query($requeteCouleurLanthanides);
$listeCouleurLanthanides = $resultatCouleurLanthanides->fetchAll(PDO::FETCH_OBJ);


// -------- REQUETES TABLE ACTINIDES ---------------------------------------------

$requeteActinides = "SELECT id,nom, numero, symbole, masse_atomique, is_radioactif FROM atome WHERE numero>=89 AND numero<=103";
$resultatActinides = $connexion->query($requeteActinides);
$listeActinides = $resultatActinides->fetchAll(PDO::FETCH_OBJ);

$requeteCouleurActinides = "SELECT atome.numero, categorie.couleur_categorie FROM atome LEFT JOIN categorie ON atome.id_categorie = categorie.id_categorie WHERE atome.numero>88 AND atome.numero<104";
$resultatCouleurActinides = $connexion->query($requeteCouleurActinides);
$listeCouleurActinides = $resultatCouleurActinides->fetchAll(PDO::FETCH_OBJ);


// -------- AFICHAGE TABLES L / A ---------------------------------------------

$tableLA = [
    [0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0]
];

affichageTable($listeLanthanides, $tableLA, $listeCouleurLanthanides);
affichageTable($listeActinides, $tableLA, $listeCouleurActinides);

?>


<!-- // ---------------------------------- SCRIPT JS --------------------------------------------- -->
<!-- // ------------------------------------------------------------------------------------------ -->

<script src="script/script.js">
</script>