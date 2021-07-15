<?php
	// $servername = "localhost";
	// $username = "dbo869561088";
	// $password = "wNAeSD55XtQWE!!";
	// $dbname = "ssbeac_website";

	$username = 'root';
	$password = 'root';
	$dbname = 'ssbeac_website';

	function getTauxUrbanisation($district) {
		$districtTemp = getAll('District', ['designation' => '\''.$district.'\'']);
		$tauxUrbanisation = getAll('Taux_urbanisation', ['id_region' => $districtTemp[sizeof($districtTemp)-1]['id_region']]);
		return $tauxUrbanisation[sizeof($tauxUrbanisation)-1]['taux'];
	}

	function getAll($table, $whereClauses = ["deleted"=>0]) {
		try {
			// $conn = mysqli_connect($servername, $username, $password);
			global $username, $password, $dbname;
			$conn = mysqli_connect("localhost", $username, $password, $dbname);
			$valiny = [];
			if (!$conn) {
			  die("Connection failed: " . mysqli_connect_error());
			}

			$whereSql = '';

			if($whereClauses != null) {
				foreach ($whereClauses as $key => $value) {
					$whereSql.=' AND '.$key.' = '.$value;
				}
				$whereSql.=';';
			}

			$sql = "SELECT * FROM ".$table." WHERE 1=1 ".$whereSql;

			// var_dump($sql);

			$result = $conn->query($sql);
			// var_dump($result);
			while($row = $result->fetch_assoc()) {
				$valiny[] = $row;
			}
			return $valiny;
		} catch (Exception $e) {
			echo $e;
		} finally {
			$conn->close();
		}
	}

	function getAllWhere($table, $where = '') {
		try {
			// $conn = mysqli_connect($servername, $username, $password);
			global $username, $password, $dbname;
			$conn = mysqli_connect("localhost", $username, $password, $dbname);
			$valiny = [];
			if (!$conn) {
			  die("Connection failed: " . mysqli_connect_error());
			}
			$sql = "SELECT * FROM ".$table.";";
			$result = $conn->query($sql);
			// var_dump($result);
			while($row = $result->fetch_assoc()) {
				$valiny[] = $row;
			}
			return $valiny;
		} catch (Exception $e) {
			echo $e;
		} finally {
			$conn->close();
		}
	}	

	function checkLog($email, $mdp) {
		try {
			// $conn = mysqli_connect($servername, $username, $password);
			global $username, $password, $dbname;
			$conn = mysqli_connect("localhost", $username, $password, $dbname);
			$valiny = [];
			if (!$conn) {
			  die("Connection failed: " . mysqli_connect_error());
			}
			$sql = "SELECT * FROM users WHERE (email='".$email."' OR nom='".$email."') AND mdp='".$mdp."';";
			// $sql = $conn->prepare("SELECT * FROM users WHERE email=? AND mdp=?");
			// $sql->bind_param("ss", $email, $mdp);
			$result = $conn->query($sql);
			// var_dump($result);
			$row = $result->fetch_assoc();
			if ($result->num_rows == 0) {
				return 0;
			}
			return $row['id'];
		} catch (Exception $e) {
			echo $e;
		} finally {
			$conn->close();
		}
	}

	function checkUpdate($table,$id) {
		try {
			// $conn = mysqli_connect($servername, $username, $password);
			global $username, $password, $dbname;
			$conn = mysqli_connect("localhost", $username, $password, $dbname);
			$valiny = [];
			if (!$conn) {
			  die("Connection failed: " . mysqli_connect_error());
			}
			$sql = "SELECT * FROM ".$table." WHERE _id = ".$id.";";

			var_dump($sql);

			$result = $conn->query($sql);
			return $result->num_rows > 0;
		} catch (Exception $e) {
			echo $e;
		} finally {
			$conn->close();
		}
	}

	function insertMenage($_id,
			$date,
			$district,
			$agglomeration,
			$typeMenage,
			$tailleMenage,
			$typeGrosConsommateur,
			$frequenceRenouvellementBCTrad,
			$prixRenouvellementBCTrad,
			$frequenceRenouvellementBCAmeliore,
			$prixRenouvellementBCAmeliore,
			$frequenceRenouvellementCBTrad,
			$prixRenouvelementCBTrad,
			$frequenceRenouvellementCBAmeliore,
			$prixRenouvelementCBAmeliore) {
		// try {
			// $conn = mysqli_connect($servername, $username, $password);
			global $username, $password, $dbname;
			$conn = mysqli_connect("localhost", $username, $password, $dbname);
			if (!$conn) {
			  die("Connection failed: " . mysqli_connect_error());
			}
			$sql = null;
			if (!checkUpdate('menage', $_id)) {
				$sql = $conn->prepare("INSERT INTO menage VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				$sql->bind_param("issssisiiiiiiii",
				$_id,
				$date,
				$district,
				$agglomeration,
				$typeMenage,
				$tailleMenage,
				$typeGrosConsommateur,
				$frequenceRenouvellementBCTrad,
				$prixRenouvellementBCTrad,
				$frequenceRenouvellementBCAmeliore,
				$prixRenouvellementBCAmeliore,
				$frequenceRenouvellementCBTrad,
				$prixRenouvelementCBTrad,
				$frequenceRenouvellementCBAmeliore,
				$prixRenouvelementCBAmeliore
			);
			} else {
				$sql = $conn->prepare("UPDATE menage SET date=?,district=?,agglomeration=?,typeMenage=?,tailleMenage=?,typeGrosConsommateur=?,frequenceRenouvellementBCTrad=?,prixRenouvellementBCTrad=?,frequenceRenouvellementBCAmeliore=?,prixRenouvellementBCAmeliore=?,frequenceRenouvellementCBTrad=?,prixRenouvelementCBTrad=?,frequenceRenouvellementCBAmeliore=?,prixRenouvelementCBAmeliore=? WHERE _id=?;");
				$sql->bind_param("ssssisiiiiiiiii",
				$_id,
				$date,
				$district,
				$agglomeration,
				$typeMenage,
				$tailleMenage,
				$typeGrosConsommateur,
				$frequenceRenouvellementBCTrad,
				$prixRenouvellementBCTrad,
				$frequenceRenouvellementBCAmeliore,
				$prixRenouvellementBCAmeliore,
				$frequenceRenouvellementCBTrad,
				$prixRenouvelementCBTrad,
				$frequenceRenouvellementCBAmeliore,
				$prixRenouvelementCBAmeliore
			);
			}
			$sql->execute();
			$sql->close();
			$conn->close();
		}


	function insertEC($_id,$_idMenage,$energie,$autreEnergie,$qte,$prix,$saison) {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		if (!$conn) {
		  die("Connection failed: " . mysqli_connect_error());
		}
		$sql = null;
		if (!checkUpdate('energie_cuisson', $_id)) {
			$sql = $conn->prepare("INSERT INTO energie_cuisson VALUES (?,?,?,?,?,?,?)");
			$sql->bind_param("iissiis",
			$_id,
			$_idMenage,
			$energie,
			$autreEnergie,
			$qte,
			$prix,
			$saison
		);
		} else {
			$sql = $conn->prepare("UPDATE energie_cuisson SET _idMenage=?,energie=?,autreEnergie=?,qte=?,prix=?,saison=? WHERE _id=?;");
			$sql->bind_param("issiisi",
			$_idMenage,
			$energie,
			$autreEnergie,
			$qte,
			$prix,
			$saison,
			$_id
		);
		}
		$sql->execute();
		$sql->close();
		$conn->close();
	}

	function insertCharbonnier($_id,$date,$district,$agglomeration,$espece_bois,$zone_prelevement,$autorisation,$qte_bois,$qte_charbon) {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		if (!$conn) {
		  die("Connection failed: " . mysqli_connect_error());
		}
		$sql = null;
		if (!checkUpdate('charbonnier', $_id)) {
			$sql = $conn->prepare("INSERT INTO charbonnier VALUES (?,?,?,?,?,?,?,?,?)");
			$sql->bind_param("isssssidd",
			$_id,
			$date,
			$district,
			$agglomeration,
			$espece_bois,
			$zone_prelevement,
			$autorisation,
			$qte_bois,
			$qte_charbon
		);
		} else {
			$sql = $conn->prepare("UPDATE charbonnier date=?,district=?,agglomeration=?,espece_bois=?,zone_prelevement=?,autorisation=?,qte_bois=?,qte_charbon=? WHERE _id=?;");
			$sql->bind_param("sssssiddi",
			$date,
			$district,
			$agglomeration,
			$espece_bois,
			$zone_prelevement,
			$autorisation,
			$qte_bois,
			$qte_charbon,
			$_id
		);
		}
		$sql->execute();
		$sql->close();
		$conn->close();
	}

	function insertMeule($_id,$id_charbonnier,$type_meule,$meule,$longueur,$largeur,$hauteur) {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		if (!$conn) {
		  die("Connection failed: " . mysqli_connect_error());
		}
		$sql = null;
		if (!checkUpdate('meule', $_id)) {
			$sql = $conn->prepare("INSERT INTO meule VALUES (?,?,?,?,?,?,?)");
			$sql->bind_param("iissddd",
				$_id,
				$id_charbonnier,
				$type_meule,
				$meule,
				$longueur,
				$largeur,
				$hauteur
			);
		} else {
			$sql = $conn->prepare("UPDATE meule SET id_charbonnier=?,type_meule=?,meule=?,longueur=?,largeur=?,hauteur=? WHERE _id=?;");
			$sql->bind_param("issdddi",
				$id_charbonnier,
				$type_meule,
				$meule,
				$longueur,
				$largeur,
				$hauteur,
				$_id
			);
		}
		$sql->execute();
		$sql->close();
		$conn->close();
	}

	function insertBarriere($_id,$date,$district,$agglomeration,$axe,$latitude,$longitude,$laisser_passer,$transport,$district_provenance,$designation_provenance,$district_arrivee,$designation_arrivee) {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		if (!$conn) {
		  die("Connection failed: " . mysqli_connect_error());
		}
		$sql = null;
		if (!checkUpdate('barriere', $_id)) {
			$sql = $conn->prepare("INSERT INTO barriere VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			$sql->bind_param("issssssisssss",
			$_id,
			$date,
			$district,
			$agglomeration,
			$axe,
			$latitude,
			$longitude,
			$laisser_passer,
			$transport,
			$district_provenance,
			$designation_provenance,
			$district_arrivee,
			$designation_arrivee
		);
		} else {
			$sql = $conn->prepare("UPDATE barriere SET date=?,district=?,agglomeration=?,axe=?,latitude=?,longitude=?,laisser_passer=?,transport=?,district_provenance=?,designation_provenance=?,district_arrivee=?,designation_arrivee=? WHERE _id=?;");
			$sql->bind_param("ssssssisssssi",
				$date,
				$district,
				$agglomeration,
				$axe,
				$latitude,
				$longitude,
				$laisser_passer,
				$transport,
				$district_provenance,
				$designation_provenance,
				$district_arrivee,
				$designation_arrivee,
				$_id
			);
		}
		$sql->execute();
		$sql->close();
		$conn->close();
	}

	function insertProduit($_id,$id_barriere,$type,$produit,$qte) {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		if (!$conn) {
		  die("Connection failed: " . mysqli_connect_error());
		}
		$sql = null;
		if (!checkUpdate('produit', $_id)) {
			$sql = $conn->prepare("INSERT INTO produit VALUES (?,?,?,?,?)");
			$sql->bind_param("iissd",
				$_id,
				$id_barriere,
				$type,
				$produit,
				$qte
			);
		} else {
			$sql = $conn->prepare("UPDATE produit SET id_barriere=?,type=?,produit=?,qte=? WHERE _id=?;");
			$sql->bind_param("issdi",
				$id_barriere,
				$type,
				$produit,
				$qte,
				$_id
			);
		}
		$sql->execute();
		$sql->close();
		$conn->close();
	}

	function insertDS($_id,$district_ds,$agglomeration_ds,$nbr_population_r_ds,$nbr_population_u_ds,$nbr_taille_moyenne_m_u,$nbr_taille_moyenne_m_r,$nbr_charbonnier,$nbr_gros_consommateur) {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		if (!$conn) {
		  die("Connection failed: " . mysqli_connect_error());
		}
		$sql = null;
		if (!checkUpdate('donneesecondaire', $_id)) {
			$sql = $conn->prepare("INSERT INTO donneesecondaire VALUES (?,?,?,?,?,?,?,?,?)");
			$sql->bind_param("issiiiiii",
			$_id,
			$district_ds,
			$agglomeration_ds,
			$nbr_population_r_ds,
			$nbr_population_u_ds,
			$nbr_taille_moyenne_m_u,
			$nbr_taille_moyenne_m_r,
			$nbr_charbonnier,
			$nbr_gros_consommateur
		);
		} else {
			try{
				$sql = $conn->prepare("UPDATE donneesecondaire SET district_ds=?,agglomeration_ds=?,nbr_population_r_ds=?,nbr_population_u_ds=?,nbr_taille_moyenne_m_u=?,nbr_taille_moyenne_m_r=?,nbr_charbonnier=?,nbr_gros_consommateur=? WHERE _id=?;");

				// var_dump($sql);

				$sql->bind_param("ssiiiiiii",
					$district_ds,
					$agglomeration_ds,
					$nbr_population_r_ds,
					$nbr_population_u_ds,
					$nbr_taille_moyenne_m_u,
					$nbr_taille_moyenne_m_r,
					$nbr_charbonnier,
					$nbr_gros_consommateur,
					$_id
				);
			} catch(Exception $e) {
				var_dump($e);
			}
			
		}
		$sql->execute();
		$sql->close();
		$conn->close();
	}
?>