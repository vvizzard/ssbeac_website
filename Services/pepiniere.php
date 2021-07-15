<?php

function getNbrPlants($idRegion=null, $idDistrict=null, $year=null) {
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
			$whereSql .= " AND region_id = ".$idRegion;
		}
		if($idDistrict != null) {
			$whereSql .= " AND id == ".$idDistrict;
		}
		$sql = "SELECT district_id as id, district as district, region_id, SUM(nbr_plants) as nbr FROM view_pepiniere 
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