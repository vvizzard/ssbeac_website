<?php include 'Services/database.php';?>
<?php include 'Services/docref.php';?>
<?php include 'Services/potentielforet.php';?>
<?php include 'Services/potentielreboisement.php';?>
<?php include 'Services/pepiniere.php';?>
<?php include 'Services/prodEquipementCuisson.php';?>
<?php include 'Services/charbonnier.php';?>
<?php include 'Services/donneesecondaire.php';?>
<?php
  $idRegion = 1;
  $nbrDistrict = countDistrict($idRegion)[0]["nbr"];
  $year = date("Y");
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Stellar Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="./vendors/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="./vendors/chartist/chartist.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="./images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex align-items-center">
          <a class="navbar-brand brand-logo" href="index.html">
            <img src="images/logo.svg" alt="logo" class="logo-dark" />
          </a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center flex-grow-1">
          <h5 class="mb-0 font-weight-medium d-none d-lg-flex">Système de Suivie de Bois Energie et Alternative de Cuisson</h5>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="text-wrapper">
                  <p class="profile-name">Vakinakaratra</p>
                  <p class="designation">Gestion région</p>
                </div>
              </a>
            </li>
            <li class="nav-item nav-category">
              <span class="nav-link">Résultat des traitements</span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.html">
                <span class="menu-title">Résumé des résultats</span>
                <!-- <i class="icon-screen-desktop menu-icon"></i> -->
              </a>
            </li>
            <li class="nav-item nav-category"><span class="nav-link">Fiche d'enquêtes</span></li>
            <!-- <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Données secondaires</span>
                <i class="icon-layers menu-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
                </ul>
              </div>
            </li> -->
            <li class="nav-item">
              <a class="nav-link" href="pages/icons/simple-line-icons.html">
                <span class="menu-title">Données secondaires</span>
                <!-- <i class="icon-globe menu-icon"></i> -->
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/forms/basic_elements.html">
                <span class="menu-title">Potentiel forêts naturelles</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/charts/chartist.html">
                <span class="menu-title">Potentiel reboisements</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Barrières</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Charbonniers</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Consommateurs</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Prod alternatives de cuisson</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Prod équipement de cuisson</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pages/tables/basic-table.html">
                <span class="menu-title">Pépinières</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- <div class="row purchace-popup">
              <div class="col-12 stretch-card grid-margin">
                <div class="card card-secondary">
                  <span class="card-body d-lg-flex align-items-center">
                    <p class="mb-lg-0">Système de Suivie de Bois Energie et Alternative de Cuisson</p>
                    <a href="https://www.bootstrapdash.com/product/stellar-admin/?utm_source=organic&utm_medium=banner&utm_campaign=free-preview" target="_blank" class="btn btn-warning purchase-button btn-sm my-1 my-sm-0 ml-auto">Upgrade To Pro</a>
                    <button class="close popup-dismiss ml-2">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </span>
                </div>
              </div>
            </div> -->

            <!-- Document cadre référentiel -->
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="d-sm-flex align-items-baseline report-summary-header">
                          <h5 class="font-weight-semibold">Cadre référentiel</h5>
                        </div>
                      </div>
                    </div>
                    <?php 
                      $cadre_ref = getRepartitionCadre($idRegion);
                      $indexCadre=0;
                    ?>
                    <div class="row report-inner-cards-wrapper">
                      <?php foreach ($cadre_ref as $cadre) { ?>
                            <div class=" col-md-6 col-xl report-inner-card">
                              <div class="inner-card-text">
                                <span class="report-title"><?php echo($cadre["doc_cadre"]) ?></span>
                                <h4><?php echo($cadre["nbr"])."/".$nbrDistrict ?></h4>
                                <a href="doc_cadre.php?docid=<?php echo($cadre["id_doc"]) ?>"><span class="report-count"> voir les détails</span></a>
                              </div>
                              <div class="inner-card-icon bg-primary">
                                <i class=" icon-list"></i>
                              </div>
                            </div>
                        <?php if($indexCadre>0 && $indexCadre%3==0) { ?> 
                          </div>
                          <div class="row report-inner-cards-wrapper">
                        <?php } $indexCadre++; ?>
                      <?php } if (sizeof($cadre_ref)%2!=0) { ?>
                          <div class=" col-md-6 col-xl report-inner-card">
                            <div class="inner-card-text">
                              <span class="report-title"></span>
                              <h4></h4>
                              <span class="report-count"></span>
                            </div>
                          </div>
                        </div>
                      <?php } else { ?> </div> <?php } ?>
                  </div>
                </div>
              </div>
            </div>

            <!-- Superficie potentielle en bois énergie des forêts -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Superficie potentielle en bois énergie des forêts</h4>
                    </div>
                    <?php 
                      $potentiels = getPotentielForet($idRegion);
                      $potentielBf = getPotentielForet($idRegion, null, $year-1);
                      $indexBf = 0;
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Potentiel précédent</th>
                            <th class="font-weight-bold">Potentiel ajoutée</th>
                            <th class="font-weight-bold">Surface détruite</th>
                            <th class="font-weight-bold">Potentiel actuel</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($potentiels as $pot) { 
                          $ancienSuperficie = 0;
                          $ancienDetruit = 0;
                          if (sizeof($potentielBf)<$indexBf) {
                            $ancienSuperficie = $potentielBf[$indexBf]["superficie"];
                            $ancienDetruit = $potentielBf[$indexBf]["detruit"];
                          }
                        ?>
                          <tr>
                            <td><?php echo $pot["id"] ?></td>
                            <td><?php echo $ancienSuperficie-$ancienDetruit ?></td>
                            <td><?php echo ($pot["superficie"]-$pot["detruit"])-($ancienSuperficie-$ancienDetruit)+($pot["detruit"]-$ancienDetruit) ?></td>
                            <td><?php echo $pot["detruit"]-$ancienDetruit ?></td>
                            <td><?php echo $pot["superficie"]-$pot["detruit"] ?></td>
                          </tr>
                        <?php $indexBf++; } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Superficie potentielle en bois énergie des reboisements -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Superficie potentielle en bois énergie des reboisements</h4>
                    </div>
                    <?php 
                      $potentielsR = getPotentielReboisement($idRegion);
                      $potentielBfR = getPotentielReboisement($idRegion, null, $year-1);
                      $indexBf = 0;
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Potentiel précédent</th>
                            <th class="font-weight-bold">Potentiel ajoutée</th>
                            <th class="font-weight-bold">Surface détruite</th>
                            <th class="font-weight-bold">Potentiel actuel</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($potentielsR as $pot) { 
                          $ancienSuperficie = 0;
                          $ancienDetruit = 0;
                          if (sizeof($potentielBfR)<$indexBf) {
                            $ancienSuperficie = $potentielBfR[$indexBf]["superficie"];
                            $ancienDetruit = $potentielBfR[$indexBf]["detruit"];
                          }
                        ?>
                          <tr>
                            <td><?php echo $pot["id"] ?></td>
                            <td><?php echo $ancienSuperficie-$ancienDetruit ?></td>
                            <td><?php echo ($pot["superficie"]-$pot["detruit"])-($ancienSuperficie-$ancienDetruit)+($pot["detruit"]-$ancienDetruit) ?></td>
                            <td><?php echo $pot["detruit"]-$ancienDetruit ?></td>
                            <td><?php echo $pot["superficie"]-$pot["detruit"] ?></td>
                          </tr>
                        <?php $indexBf++; } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Nbr plants -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Nombre de plants produits prêts à être mis en terre</h4>
                    </div>
                    <?php 
                      $nbrPlants = getNbrPlants($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Nombre de plants</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($nbrPlants as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["nbr"] ?></td>
                          </tr>
                        <?php  } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Nbr equipement -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Nombre des différents types d’équipement de cuisson disponible pour l’offre</h4>
                    </div>
                    <?php 
                      $nbrEquipement = getNbrEquipement($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Energie de cuisson</th>
                            <th class="font-weight-bold">Nombre d'équipement disponible</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($nbrEquipement as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["energie"] ?></td>
                            <td><?php echo $pot["nbr"] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Quantité d'énergie disponible issue des différents types d'alternatives de cuisson -->
            <div class="row quick-action-toolbar">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-header d-block d-md-flex">
                    <h5 class="mb-0">Quantité d'énergie disponible issue des différents types d'alternatives de cuisson</h5>
                    <!-- <p class="ml-auto mb-0">How are your active users trending overtime?<i class="icon-bulb"></i></p> -->
                  </div>
                  <div class="d-md-flex row m-0 quick-action-btns" role="group" aria-label="Quick action buttons">
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Taux d'adoption des pratiques/techniques de carbonisation améliorées par les charbonniers formellement recensés -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Taux d'adoption des pratiques/techniques de carbonisation améliorées par les charbonniers formellement recensés</h4>
                    </div>
                    <?php 
                      $nbrCForme = getNbrCharbonnierForme($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Nombre de charbonnier formés</th>
                            <th class="font-weight-bold">Nombre total de charbonnier</th>
                            <th class="font-weight-bold">Taux d'adoption des pratiques de carbonisation améliorées</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($nbrCForme as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo !$pot["nbr_f"]?0:$pot["nbr_f"] ?></td>
                            <td><?php echo $pot["nbr"] ?></td>
                            <td><?php echo $pot["nbr_f"]*100/$pot["nbr"]."%" ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pourcentage moyen de production de charbon de bois par type de technique de carbonisation  -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Pourcentage moyen de production de charbon de bois par type de technique de carbonisation </h4>
                    </div>
                    <?php 
                      $nbrCForme = getTauxTechinqueCarbonisation($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Technique</th>
                            <th class="font-weight-bold">Bois</th>
                            <th class="font-weight-bold">Charbon</th>
                            <th class="font-weight-bold">Taux</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($nbrCForme as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["technique"] ?></td>
                            <td><?php echo $pot["bois"] ?></td>
                            <td><?php echo $pot["charbon"] ?></td>
                            <td><?php echo $pot["charbon"]*100/$pot["bois"]."%" ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Opérateurs formels en bois énergie  -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Opérateurs formels en bois énergie </h4>
                    </div>
                    <?php 
                      $ds = getDS($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Producteurs de plants</th>
                            <th class="font-weight-bold">Producteurs bois de chauffe</th>
                            <th class="font-weight-bold">Producteurs charbons de bois</th>
                            <th class="font-weight-bold">Collecteurs bois énergie</th>
                            <th class="font-weight-bold">Transporteurs bois énergie</th>
                            <th class="font-weight-bold">Vendeurs bois énergie</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($ds as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["prod_plants"] ?></td>
                            <td><?php echo $pot["prod_bc"] ?></td>
                            <td><?php echo $pot["prod_cb"] ?></td>
                            <td><?php echo $pot["collecteurs"] ?></td>
                            <td><?php echo $pot["transporteurs"] ?></td>
                            <td><?php echo $pot["vendeurs"] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Liste de centre de collecte de bois énergie formels  -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Liste de centre de collecte de bois énergie formels </h4>
                    </div>
                    <?php 
                      $collectes = getListeNbrCollecte($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Collecte</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($collectes as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["collecte"] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Liste de réseaux de distribution de bois énergie formels  -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Liste de distribution de bois énergie formels </h4>
                    </div>
                    <?php 
                      $collectes = getListeNbrDistributeur($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Réseaux de distribution</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($collectes as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["collecte"] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Prix moyen d'achat des différents types de produits bois énergie selon les opérateurs  -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Prix moyen d'achat des différents types de produits bois énergie selon les opérateurs </h4>
                    </div>
                    <?php 
                      $pds = getListePrixDonneeSecondaire($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Prix d'achat /kg des charbons de bois par les collecteurs</th>
                            <th class="font-weight-bold">Prix d'achat /kg des bois de chauffe par les collecteurs</th>
                            <th class="font-weight-bold">Prix d'achat /kg des charbons de bois par les distributeurs</th>
                            <th class="font-weight-bold">Prix d'achat /kg des bois de chauffe par les distributeurs</th>
                            <th class="font-weight-bold">Prix d'achat /kg des charbons de bois par les détaillants</th>
                            <th class="font-weight-bold">Prix d'achat /kg des bois de chauffe par les détaillants</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($pds as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["prix_achat_cb_collecteur"] ?></td>
                            <td><?php echo $pot["prix_achat_bc_collecteur"] ?></td>
                            <td><?php echo $pot["prix_achat_cb_grossist"] ?></td>
                            <td><?php echo $pot["prix_achat_cb_grossist"] ?></td>
                            <td><?php echo $pot["prix_achat_cb_detail"] ?></td>
                            <td><?php echo $pot["prix_achat_cb_detail"] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Taux de produits bois énergie illégaux saisis -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Taux de produits bois énergie illégaux saisis</h4>
                    </div>
                    <?php 
                      $lpds = getListePrixDonneeSecondaire($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Montant total ristourne perçu</th>
                            <th class="font-weight-bold">Montant total redevance perçue</th>
                            <th class="font-weight-bold">Montant total taxe perçu</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($lpds as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["ristourne"] ?></td>
                            <td><?php echo $pot["total_percu_redevance_forestiere"] ?></td>
                            <td><?php echo $pot["ristourne"] + $pot["total_percu_redevance_forestiere"] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Montant total de taxes perçues relatives aux activités liées au bois énergie -->
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Montant total de taxes perçues relatives aux activités liées au bois énergie</h4>
                    </div>
                    <?php 
                      $illiciteds = getListePrixDonneeSecondaire($idRegion);
                    ?>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">District</th>
                            <th class="font-weight-bold">Nombre d'authorisation de collecte/production paraphé par le service chargé de forêt</th>
                            <th class="font-weight-bold">Quantité de production de bois-énergie authorisée</th>
                            <th class="font-weight-bold">Quantité de bois-énergie saisi in situ</th>
                            <th class="font-weight-bold">Nombre d'autorisation de transport paraphé par le service de chargé de forêt</th>
                            <th class="font-weight-bold">Quantité de bois énergie illégaux transportés</th>
                            <th class="font-weight-bold">Nombre de cas d'illégalité constaté</th>
                            <th class="font-weight-bold">Quantité totale de bois énergie illicites saisi</th>
                            <th class="font-weight-bold">Taux de produits bois énergie illégaux saisi</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($illiciteds as $pot) { ?>
                          <tr>
                            <td><?php echo $pot["district"] ?></td>
                            <td><?php echo $pot["nbr_authorisation_prod"] ?></td>
                            <td><?php echo $pot["qte_prod_be_authorise"] ?></td>
                            <td><?php echo $pot["qte_be_saisie_insitu"] ?></td>
                            <td><?php echo $pot["nbr_authorisation_transport"] ?></td>
                            <td><?php echo $pot["qte_be_illegal_transporte"] ?></td>
                            <td><?php echo $pot["nbr_cas_illegalite"] ?></td>
                            <td><?php echo $pot["qte_be_saisie_insitu"]+$pot["qte_be_illegal_transporte"] ?></td>
                            <td><?php echo ($pot["qte_be_saisie_insitu"]+$pot["qte_be_illegal_transporte"])/($pot["qte_be_saisie_insitu"]+$pot["qte_be_illegal_transporte"]+$pot["qte_prod_be_authorise"])*100 ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <div class="row income-expense-summary-chart-text">
                      <div class="col-xl-4">
                        <h5>Income And Expenses Summary</h5>
                        <p class="small text-muted">A comparison of people who mark themselves of their ineterest from the date range given above. Learn more.</p>
                      </div>
                      <div class=" col-md-3 col-xl-2">
                        <p class="income-expense-summary-chart-legend"> <span style="border-color: #6469df"></span> Total Income </p>
                        <h3>$ 1,766.00</h3>
                      </div>
                      <div class="col-md-3 col-xl-2">
                        <p class="income-expense-summary-chart-legend"> <span style="border-color: #37ca32"></span> Total Expense </p>
                        <h3>$ 5,698.30</h3>
                      </div>
                      <div class="col-md-6 col-xl-4 d-flex align-items-center">
                        <div class="input-group" id="income-expense-summary-chart-daterange">
                          <div class="inpu-group-prepend input-group-text"><i class="icon-calendar"></i></div>
                          <input type="text" class="form-control">
                          <div class="input-group-prepend input-group-text"><i class="icon-arrow-down"></i></div>
                        </div>
                      </div>
                    </div>
                    <div class="row income-expense-summary-chart mt-3">
                      <div class="col-md-12">
                        <div class="ct-chart" id="income-expense-summary-chart"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Products Inventory</h4>
                      <a href="#" class="text-dark ml-auto mb-3 mb-sm-0"> View all Products</a>
                    </div>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="font-weight-bold">Store ID</th>
                            <th class="font-weight-bold">Amount</th>
                            <th class="font-weight-bold">Gateway</th>
                            <th class="font-weight-bold">Created at</th>
                            <th class="font-weight-bold">Paid at</th>
                            <th class="font-weight-bold">Status</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <img class="img-sm rounded-circle" src="images/faces/face1.jpg" alt="profile image"> Katie Holmes
                            </td>
                            <td>$3621</td>
                            <td><img src="images/dashboard/alipay.png" alt="alipay" class="gateway-icon mr-2"> alipay</td>
                            <td>04 Jun 2019</td>
                            <td>18 Jul 2019</td>
                            <td>
                              <div class="badge badge-success p-2">Paid</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <img class="img-sm rounded-circle" src="images/faces/face2.jpg" alt="profile image"> Minnie Copeland
                            </td>
                            <td>$6245</td>
                            <td><img src="images/dashboard/paypal.png" alt="alipay" class="gateway-icon mr-2"> Paypal</td>
                            <td>25 Sep 2019</td>
                            <td>07 Oct 2019</td>
                            <td>
                              <div class="badge badge-danger p-2">Pending</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <img class="img-sm rounded-circle" src="images/faces/face3.jpg" alt="profile image"> Rodney Sims
                            </td>
                            <td>$9265</td>
                            <td><img src="images/dashboard/alipay.png" alt="alipay" class="gateway-icon mr-2"> alipay</td>
                            <td>12 dec 2019</td>
                            <td>26 Aug 2019</td>
                            <td>
                              <div class="badge badge-warning p-2">Failed</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <img class="img-sm rounded-circle" src="images/faces/face4.jpg" alt="profile image"> Carolyn Barker
                            </td>
                            <td>$2263</td>
                            <td><img src="images/dashboard/alipay.png" alt="alipay" class="gateway-icon mr-2"> alipay</td>
                            <td>30 Sep 2019</td>
                            <td>20 Oct 2019</td>
                            <td>
                              <div class="badge badge-success p-2">Paid</div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="d-flex mt-4 flex-wrap">
                      <p class="text-muted">Showing 1 to 10 of 57 entries</p>
                      <nav class="ml-auto">
                        <ul class="pagination separated pagination-info">
                          <li class="page-item"><a href="#" class="page-link"><i class="icon-arrow-left"></i></a></li>
                          <li class="page-item active"><a href="#" class="page-link">1</a></li>
                          <li class="page-item"><a href="#" class="page-link">2</a></li>
                          <li class="page-item"><a href="#" class="page-link">3</a></li>
                          <li class="page-item"><a href="#" class="page-link">4</a></li>
                          <li class="page-item"><a href="#" class="page-link"><i class="icon-arrow-right"></i></a></li>
                        </ul>
                      </nav>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="./vendors/chart.js/Chart.min.js"></script>
    <script src="./vendors/moment/moment.min.js"></script>
    <script src="./vendors/daterangepicker/daterangepicker.js"></script>
    <script src="./vendors/chartist/chartist.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="./js/dashboard.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>