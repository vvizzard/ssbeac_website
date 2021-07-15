<?php

function getPotentielForet($idRegion=null, $idDistrict=null, $year = null) {
	try {
		global $username, $password, $dbname;
		$conn = mysqli_connect("localhost", $username, $password, $dbname);
		$valiny = [];
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		$whereSql = "";
		if($idRegion!=null) {
			$whereSql .= " AND region_id = ".$idRegion;
		}
		if($year != null) {
			$whereSql .= " AND YEAR(date) <= ".$year;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT id, region_id, SUM(superficie) as superficie, SUM(detruit) as detruit FROM potentiel_foret 
		WHERE 1=1 ".$whereSql." GROUP BY id ";
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