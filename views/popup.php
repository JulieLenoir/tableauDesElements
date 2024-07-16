<?php

// ---------------------- RECUPERATION GET --------------------------------

$nom = isset($_GET['id']) ? $_GET['id'] : NULL;


// ---------------------- REQUETE POUR INFOS POPUP --------------------------------


$requeteCouleurCat = "SELECT categorie.couleur_categorie 
FROM atome LEFT JOIN categorie ON atome.id_categorie = categorie.id_categorie 
WHERE atome.id='$nom'";
$resultatCouleurCat = $connexion->query($requeteCouleurCat);
$listeCouleurCat = $resultatCouleurCat->fetchAll(PDO::FETCH_OBJ);

$requete = "SELECT id,nom, numero, symbole,masse_atomique,
 configuration_electronique, etat_oxydation, electronegativite 
FROM atome 
WHERE id='$nom'";
$resultat = $connexion->query($requete);
$liste = $resultat->fetch(PDO::FETCH_OBJ);

?>


<!-- // ---------------------- AFFICHAGE POPUP -------------------------------- -->


<a href="index.php?page=detailAtome&id=<?php echo $liste->id ?>">
    <div class="elementPopUp" style="background-color:#<?php echo $listeCouleurCat[0]->couleur_categorie ?> ;">

        <!-- HAUT DE LA POP UP NUMERO ET MASSE ATOMIQUE -->
        <div class="hautPopUp">
            <div class="numeroEtLegende">
                <p class="numeroPopUp"><?php echo $liste->numero; ?>
                </p>
                <div class="legendeNumero">Numéro de l'Atome</div>
            </div>

            <div class="masseEtLegende">
                <p class="masseAtomiquePopUp"><?php echo $liste->masse_atomique; ?>
                </p>
                <div class="legendeMasseAtomique">Masse Atomique</div>
            </div>
        </div>


        <!-- MILIEU DE LA POP UP ELECTRONEGATIVITE -->
        <div class="electroEtLegende">
            <p class="electronegativitePopUp"><?php echo $liste->electronegativite; ?>
            </p>
            <div class="legendeElectronegativite">Electronégativité</div>
        </div>


        <!-- BAS DE LA POP UP  -->
        <div class="basPopUp">

            <!-- BAS DE LA POP UP A GAUCHE NOM SYMBOLE -->
            <div class="gauchePopUp">

                <div class="symboleEtLegende">
                    <p class="symbolePopUp">
                        <?php echo $liste->symbole; ?>
                    </p>
                    <div class="legendeSymbole">Symbole</div>
                </div>

                <div class="nomEtLegende">
                    <p class="nomPopUp"><?php echo $liste->nom; ?>
                    </p>
                    <div class="legendeNom">Nom</div>
                </div>


                <!-- BAS DE LA POP UP A DROITE CONFIG ELEC-->

                <div class="configEtLegende">
                    <p class="configurationElectroniquePopUp">
                        <?php echo $liste->configuration_electronique; ?>
                    </p>
                    <div class="legendeconfigurationElectronique">Configuration Electronique</div>
                </div>
            </div>

            <!-- BAS DE LA POP UP A DROITE ETAT OXID-->

            <div class="droitePopUp">
                <p class="etatOxydationPopUp"><?php echo $liste->etat_oxydation; ?>
                </p>
                <div class="legendeEtatOxydation">Etat Oxydation</div>
            </div>

        </div>
    </div>
</a>