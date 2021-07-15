<?php

function getNbrEquipement($idRegion=null, $idDistrict=null, $year=null) {
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
		$whereSql = " AND YEAR(date) <= ".$year;
		if($idRegion!=null) {
			$whereSql .= " AND d.id_region = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT district_id as id, d.label as district, d.id_region, vec.label as energie, SUM(nbr) as nbr FROM view_equipement_cuisson vec JOIN district d ON d.id = district_id 
		WHERE 1=1 ".$whereSql." group by id, energie";
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