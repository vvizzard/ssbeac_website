<?php

function getDS($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND ds.deleted = 0 AND YEAR(ds.date) = ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND d.id_region = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT d.label AS district, ds.nbr_prod_plant AS prod_plants, ds.nbr_prod_bc AS prod_bc, ds.nbr_prod_cb AS prod_cb, ds.nbr_collecteur_be AS collecteurs,
		ds.nbr_transport_be AS transporteurs, ds.nbr_detail_be AS vendeurs FROM donnee_secondaire ds JOIN district d ON d.id = ds.district_id
		WHERE 1=1 ".$whereSql." GROUP BY d.label ";
		// var_dump($sql);
		$result = $conn->query($sql);
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

function getListeNbrCollecte($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND c.deleted=0 AND is_distribution = 0 AND YEAR(date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND id_region = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT district_id as id, d.label as district, d.id_region, c.label as collecte FROM centre_collecte_be c 
				JOIN district d on d.id = c.district_id".$whereSql;
		// var_dump($sql);
		$result = $conn->query($sql);
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

function getListeNbrDistributeur($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND c.deleted=0 AND is_distribution = 1 AND YEAR(date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND id_region = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT district_id as id, d.label as district, d.id_region, c.label as collecte FROM centre_collecte_be c 
				JOIN district d on d.id = c.district_id".$whereSql;
		// var_dump($sql);
		$result = $conn->query($sql);
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

function getListePrixDonneeSecondaire($idRegion=null, $idDistrict=null, $year=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		if($year == null) {
			$year = date("Y");
		}
		$whereSql = " AND c.deleted=0 AND YEAR(date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND id_region = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT district_id as id, d.label as district, d.id_region, c.* FROM donnee_secondaire c 
				JOIN district d on d.id = c.district_id".$whereSql;
		// var_dump($sql);
		$result = $conn->query($sql);
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