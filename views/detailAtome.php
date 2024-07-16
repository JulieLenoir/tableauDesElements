<!-- REQUETE PHP POUR RECUPERER TOUS LES DETAILS DE L'ATOME -->
<?php

$detail = isset($_GET['id']) ? $_GET['id'] : NULL;


// var_dump($detail);
// ok

$requeteAffichageDetail = "SELECT categorie.id_categorie, categorie.nom_categorie, categorie.couleur_categorie, 
atome.id, atome.id_categorie, atome.nom, atome.slug, atome.electron, atome.numero, atome.symbole, atome.info_groupe, 
atome.info_periode, atome.info_bloc, atome.masse_volumique, atome.cas, atome.einecs, atome.masse_atomique, 
atome.rayon_atomique, atome.rayon_de_covalence,  atome.rayon_de_van_der_waals, atome.configuration_electronique, 
atome.etat_oxydation, atome.decouverte_annee, atome.decouverte_noms, atome.decouverte_pays, 
atome.electronegativite, atome.point_de_fusion, atome.point_d_ebullition, atome.is_radioactif

FROM atome LEFT JOIN categorie ON atome.id_categorie = categorie.id_categorie 
WHERE atome.id='$detail' ";
$resultatAffichageDetail = $connexion->query($requeteAffichageDetail);
$detailAtome =  $resultatAffichageDetail->fetchAll(PDO::FETCH_OBJ);

// var_dump($detailAtome);
// die;
// // ok

?>

<!-------------- FENETRE DETAIL DE L'ATOME  -->


<!------------ TITRE ET RETOUR A LA PAGE CATEGORIE------------- -->
<h2 class="titrePageDetailAtome">Informations Complémentaires <strong><?php echo $detailAtome[0]->nom ?></strong></h2>
<a href="index.php?page=categorie&id=<?php echo $detailAtome[0]->id_categorie ?>">
    <em>Revenir à la catégorie <?php echo $detailAtome[0]->nom_categorie ?> </em>
    <i class="fa-solid fa-rotate-left" style="color:#<?php echo $detailAtome[0]->couleur_categorie ?>;"></i>
</a>
<a href="index.php?page=home">
    <em> ou au Tableau Périodique </em> <i class="fa-solid fa-house" style="color:#<?php echo $detailAtome[0]->couleur_categorie ?>;">
    </i></a>



<!-- --------------DETAIL DE L'ATOME------------ -->
<section class="detailAtome">

    <!-- POP UP POUR LE DETAIL IDEM PAGE POP UP -->
    <div class="popUpDetail">
        <div class="elementPopUpDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?> ;">

            <!-- HAUT DE LA POP UP NUMERO ET MASSE ATOMIQUE -->
            <div class="hautPopUp">
                <div class="numeroEtLegende">
                    <p class="numeroPopUp"><?php echo $detailAtome[0]->numero; ?>
                    </p>
                    <div class="legendeNumero">Numéro de l'Atome</div>
                </div>

                <div class="masseEtLegende">
                    <p class="masseAtomiquePopUp"><?php echo $detailAtome[0]->masse_atomique; ?>
                    </p>
                    <div class="legendeMasseAtomique">Masse Atomique</div>
                </div>
            </div>


            <!-- MILIEU DE LA POP UP ELECTRONEGATIVITE -->
            <div class="electroEtLegende">
                <p class="electronegativitePopUp"><?php echo $detailAtome[0]->electronegativite; ?>
                </p>
                <div class="legendeElectronegativite">Electronégativité</div>
            </div>


            <!-- BAS DE LA POP UP  -->
            <div class="basPopUp">

                <!-- BAS DE LA POP UP A GAUCHE NOM SYMBOLE -->
                <div class="gauchePopUp">

                    <div class="symboleEtLegende">
                        <p class="symbolePopUp">
                            <?php echo $detailAtome[0]->symbole; ?>
                        </p>
                        <div class="legendeSymbole">Symbole</div>
                    </div>

                    <div class="nomEtLegende">
                        <p class="nomPopUp"><?php echo $detailAtome[0]->nom; ?>
                        </p>
                        <div class="legendeNom">Nom</div>
                    </div>


                    <!-- BAS DE LA POP UP A DROITE CONFIG ELEC-->

                    <div class="configEtLegende">
                        <p class="configurationElectroniquePopUp">
                            <?php echo $detailAtome[0]->configuration_electronique; ?>
                        </p>
                        <div class="legendeconfigurationElectronique">Configuration Electronique</div>
                    </div>
                </div>

                <!-- BAS DE LA POP UP A DROITE ETAT OXID-->

                <div class="droitePopUp">
                    <p class="etatOxydationPopUp"><?php echo $detailAtome[0]->etat_oxydation; ?>
                    </p>
                    <div class="legendeEtatOxydation">Etat Oxydation</div>
                </div>

            </div>
        </div>
    </div>

    <div class="tableauEtDecouverte">


        <!---------------- ELEMENT DECOUVERTE ANNEE NOM PAYS--------------------------->
        <div class="decouverte">

            <p class="anneeDecouverte"><b>Année de Découverte :</b> <br>
                <?php echo $detailAtome[0]->decouverte_annee ?></p>
            <p class="nomDecouverte"><b>Nom :</b> <br>
                <?php echo $detailAtome[0]->decouverte_noms  ?></p>
            <p class="paysDecouverte"><b> Pays :</b> <br>
                <?php echo $detailAtome[0]->decouverte_pays ?></p>


        </div>

        <!----------------- TABLEAU AVEC ELEMENTS SUPPLEMENTAIRES --------------------->
        <table class="tableauDetailAtome1" border="1">
            <tr id="ligne1">
                <th class="tableauDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">
                    </td>
                <th class="tableauDetailAtome" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">Données</td>
            </tr>

            <tr id="ligne1">
                <td class="tableauDetail">Electron</td>
                <td class="tableauDetailAtome"><?php echo $detailAtome[0]->electron ?></td>
            </tr>

            <tr id="ligne2">
                <td class="tableauDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">Groupe</td>
                <td class="tableauDetailAtome" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>"><?php echo $detailAtome[0]->info_groupe ?></td>
            </tr>

            <tr id="ligne3">
                <td class="tableauDetail">Période</td>
                <td class="tableauDetailAtome"><?php echo $detailAtome[0]->info_periode ?></td>
            </tr>

            <tr id="ligne4">
                <td class="tableauDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">Bloc</td>
                <td class="tableauDetailAtome" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>"><?php echo $detailAtome[0]->info_bloc ?></td>
            </tr>
            <tr id="ligne5">
                <td class="tableauDetail">Point de Fusion</td>
                <td class="tableauDetailAtome"><?php echo $detailAtome[0]->point_de_fusion ?></td>
            </tr>
            <tr id="ligne6">
                <td class="tableauDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">Point d'ébulition</td>
                <td class="tableauDetailAtome" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>"><?php echo $detailAtome[0]->point_d_ebullition ?></td>
            </tr>


            <tr id="ligne7">
                <td class="tableauDetail">C.A.S</td>
                <td class="tableauDetailAtome"><?php echo $detailAtome[0]->cas ?></td>
            </tr>

            <tr id="ligne8">
                <td class="tableauDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">EINECS</td>
                <td class="tableauDetailAtome" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>"><?php echo $detailAtome[0]->einecs ?></td>
            </tr>

            <tr id="ligne9">
                <td class="tableauDetail">Rayon Atomique</td>
                <td class="tableauDetailAtome"><?php echo $detailAtome[0]->rayon_atomique ?></td>
            </tr>

            <tr id="ligne10">
                <td class="tableauDetail" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>">Rayon de covalence</td>
                <td class="tableauDetailAtome" style="background-color:#<?php echo $detailAtome[0]->couleur_categorie ?>"><?php echo $detailAtome[0]->rayon_de_covalence ?></td>
            </tr>
            <tr id="ligne11">
                <td class="tableauDetail">Rayon de van der waals </td>
                <td class="tableauDetailAtome"><?php echo $detailAtome[0]->rayon_de_van_der_waals ?></td>
            </tr>
        </table>


    </div>




</section>