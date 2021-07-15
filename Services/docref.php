<?php

function getRepartitionCadre($idRegion=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		$whereSql = "AND cr.deleted=0 ";
		if($idRegion!=null) {
			$whereSql = "AND cr.deleted=0 AND id_region = ".$idRegion;
		}
		$sql = "SELECT dc.id AS id_doc, dc.label AS doc_cadre, COUNT(*)  AS nbr
		FROM cadre_reference  cr 
			JOIN doc_cadre dc ON dc.id = cr.doc_cadre_id
			JOIN district d ON d.id = cr.district_id
			JOIN region r ON r.id = d.id_region
		WHERE 1=1 ".$whereSql." GROUP BY doc_cadre_id ";
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

function countDistrict($idRegion=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		$whereSql = "AND deleted=0 ";
		if($idRegion!=null) {
			$whereSql = "AND deleted=0 AND id_region = ".$idRegion;
		}
		$sql = "SELECT COUNT(*)  AS nbr
		FROM district 
		WHERE 1=1 ".$whereSql;
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

function getDistrictWithDoc($idDoc=1, $idRegion=null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		$whereSql = "AND deleted=0 AND doc_cadre_id = ".$idDoc." ";
		if($idRegion!=null) {
			$whereSql = "AND deleted=0 AND doc_cadre_id = ".$idDoc." AND id_region = ".$idRegion;
		}
		$sql = "SELECT * FROM cadre_view 
		WHERE 1=1 ".$whereSql;
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